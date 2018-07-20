using Kruger;
using KrugerService.Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Http;

namespace KrugerService
{
    public class KrugerController : ApiController
    {
        private static log4net.ILog log = log4net.LogManager.GetLogger(typeof(KrugerController));
        [HttpPost]
        public FanModel Select([FromBody]SelectInfoModel model)
        {
            FanModel fan = new FanModel();

            SelectInfo si = new SelectInfo();

            String path = String.Format("{0}\\{1}", System.AppDomain.CurrentDomain.BaseDirectory, "test\\Records\\");
            log.Debug(path);

            si.RecordDirectory = path;
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

            log.Debug(model);
            Fans fanList = KrugerUtil.Select(si);

            Fan f = fanList.Item(2);
            fan.DimA = f.DimA;

            return fan;
        }

    }
}
