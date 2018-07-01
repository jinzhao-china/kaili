using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using RestAPIHost;

namespace UnitTestKaiLi
{
    [TestClass]
    public class UnitTestKrugerUtil
    {
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
