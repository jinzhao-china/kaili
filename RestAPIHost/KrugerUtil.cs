using Kruger;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RestAPIHost
{
    public class KrugerUtil
    {
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
            si.RecordDirectory = @"C:\Xiaomi\test\Records\";
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

            Console.WriteLine(fanList.Count);

            Fan f = fanList.Item(1);
            Console.WriteLine(f.FanDescription);
            return fanList;
        }
    }
}
