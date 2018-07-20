using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using KrugerService;
using Kruger;

namespace UnitTestKaiLi
{
    [TestClass]
    public class UnitTestKrugerUtil
    {
        private SelectInfo getSelectInfo()
        {
            SelectInfo si = new SelectInfo();

            String path = String.Format("{0}\\{1}", System.AppDomain.CurrentDomain.BaseDirectory, "test\\Records\\");

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

            return si;
        }
        [TestMethod]
        public void TestSelectDrives()
        {
            SelectInfo si = getSelectInfo();
            Fans fanList = KrugerUtil.Select(si);

            Fan f = fanList.Item(1);
            KrugerUtil.SelectDrives(f);
        }

        [TestMethod]
        public void TestSoundSpectrum()
        {
            SelectInfo si = getSelectInfo();
            Fans fanList = KrugerUtil.Select(si);

            Fan f = fanList.Item(1);
            KrugerUtil.SoundSpectrum(f);
        }

        [TestMethod]
        public void TestCurvePoints()
        {
            SelectInfo si = getSelectInfo();
            Fans fanList = KrugerUtil.Select(si);

            Assert.AreEqual(1, fanList.Count);
            Fan f = fanList.Item(1);
            KrugerUtil.CurvePoints(f);
        }

        [TestMethod]
        public void TestSelect()
        {
            
            KrugerUtil.Select(getSelectInfo());
        }
    }
}
