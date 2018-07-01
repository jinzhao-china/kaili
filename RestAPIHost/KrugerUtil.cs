using Kruger;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RestAPIHost
{
    public class KrugerUtil
    {
        public static void SelectDrives()
        {
            Fan f = Select().Item(2);
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

            if(driveCount > 0)
            {
                Drive dr = drs.Items(0);
                Trace.WriteLine(dr.Deviation);
                Trace.WriteLine(dr.FanPulleySize);
                Trace.WriteLine(dr.MotorPulleySize);
                Trace.WriteLine(dr.NumberBelts);
            }

        }

        public static void SoundSpectrum()
        {
            Fan f = Select().Item(1);
            CentSelect cs = new CentSelect();
            Kruger.Spectrum spectrum = cs.SoundSpectrum(f, 0);
            Array LpASpectrum = spectrum.Inlet_LpA_Spectrum;

        }
        public static void CurvePoints()
        {
            Fan f = Select().Item(1);

            Kruger.Curve curve;
            CentSelect cs = new CentSelect();
            curve = cs.CurvePoints(f, 0);

            Array VolumePoints = curve.VolumePoints;
            Array PressurePoints = curve.PressurePoints;
            Array PowerPoints = curve.PowerPoints;

        }
        public static Fans Select()
        {
            SelectInfo si = new SelectInfo();
            si.RecordDirectory = @".\test\Records\";
            si.Volume = 50000;
            si.Pressure = 500;
            si.VolumeUnit = VolumeUnit.vuM3H;
            si.PressureUnit = PressureUnit.puPa;
            si.PressureType = PressureType.ptStatic;
            si.CallType = 0;
            si.Debug = 0;
            si.Hz = 50;
            si.Temperature = 20;
            si.Altitude = 0;
            si.ProductType = Product.ptAny;
            si.MinStyle = 1;
            si.MinClass = FanClass.fcI;
            si.SoundCondition = SoundCondition.scRoom;
            si.FanCasing = FanCasing.fcSingleFrame;
            si.FanWidth = 1;
            si.VelocityUnit = VelocityUnit.vuMS;
            si.OutletType = OutletType.otDucted;
            si.ServiceFactor = 1.3F;
            si.AltitudeUnit = AltitudeUnit.auFT;
            si.SoundDistance = 1;
            si.SoundDistanceUnit = DistanceUnit.duM;
            si.TemperatureUnit = TemperatureUnit.DegreeC;



            CentSelect cs = new CentSelect();
            Fans fanList = cs.Select(si);

            Trace.WriteLine(fanList.Count);

            Fan f = fanList.Item(2);
            Trace.WriteLine(f.FanDescription);
            return fanList;
        }
    }
}
