using Kruger;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Script.Serialization;

namespace KrugerService
{
    public class KrugerUtil
    {
        private static log4net.ILog log = log4net.LogManager.GetLogger(typeof(KrugerUtil));

        // kruger主要调用接口centselect.Select 、centselect.SoundSpectrumEx、centselect.CurvePoints
        public static void SelectDrives(Fan f)
        {
            CentSelect cs = new CentSelect();

            Drives drs = new Drives();
            DriveInfo di = new DriveInfo();

            di.Distance = 0;//  ' 0 = Standard. 1 to 7 as Program ComboBox. Over 10 = user specified distance in mm
            di.BearingLoad = 1;  // ' 0 = Low. 1 = Medium. 2 = Heavy. 3 = Extra Heavy
            di.StartTime = 0; //' 0 = Standard times. Over 0 = user defined time in seconds
            di.SPZ = false;
            di.SPA = true;
            di.SPB = false;
            di.SPC = false;
            di.Pole2 = false;
            di.Pole4 = true;
            di.Pole6 = false;
            di.Pole8 = false;
            di.L10_Life = 75000;
            di.L50_Life = 300000;
            di.MotorPosition = MotorPosition.mpZ;
            di.FanHanding = FanHanding.fhCW90;
            di.FanArrangement = FanArrangement.faSet;
            di.RecordDirectory = @".\test\Records\";

            int driveCount = drs.SelectDrives(f, di);

            if (driveCount > 0)
            {
                Drive dr = drs.Items(0);
                Trace.WriteLine(dr.Deviation);
                Trace.WriteLine(dr.FanPulleySize);
                Trace.WriteLine(dr.MotorPulleySize);
                Trace.WriteLine(dr.NumberBelts);
            }

        }

        public static Spectrum SoundSpectrum(Fan f)
        {
            CentSelect cs = new CentSelect();
            Kruger.Spectrum spectrum = cs.SoundSpectrum(f, 0);
            Array LpASpectrum = spectrum.Inlet_LpA_Spectrum;
            return spectrum;
        }

        public static Spectrum SoundSpectrumEx(Fan f, int speed, bool debug)
        {
            CentSelect cs = new CentSelect();
            Kruger.Spectrum spectrum = cs.SoundSpectrumEx(f, speed, debug);

            return spectrum;
        }
        public static Curve CurvePoints(Fan f, int speed)
        {
            Curve curve;
            CentSelect cs = new CentSelect();
            curve = cs.CurvePoints(f, speed);

            return curve;

        }
        public static Fans Select(SelectInfo si)
        {

            JavaScriptSerializer js = new JavaScriptSerializer();
            string json = js.Serialize(si);
            log.Debug(json);
            CentSelect cs = new CentSelect();
            Fans fanList = cs.Select(si);

            return fanList;
        }
    }
}
