using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using KrugerService;

namespace UnitTestKaiLi
{
    [TestClass]
    public class UnitTestKrugerUtil
    {
        [TestMethod]
        public void TestSelectDrives()
        {
            KrugerUtil.SelectDrives();
        }

        [TestMethod]
        public void TestSoundSpectrum()
        {
            KrugerUtil.SoundSpectrum();
        }

        [TestMethod]
        public void TestCurvePoints()
        {
            KrugerUtil.CurvePoints();
        }

        [TestMethod]
        public void TestSelect()
        {
            KrugerUtil.Select();
        }
    }
}
