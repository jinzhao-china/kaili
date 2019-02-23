using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KrugerService.Models
{
    public sealed class FanModel
    {
        public string chartPath { get; set; }
        public string chartName { get; set; }
        public int chartType { get; set; }
        public int Height { get; set; }
        public int Width { get; set; }

        public bool Debug { get; set; }
        public float AirVelocity { get; set; }

        public float AMCAPressure { get; set; }

        public float AMCAVolume { get; set; }

        public int BearingLoad { get; set; }

        public int BladeType { get; set; }

        public int DataPoint { get; set; }

        public float Density { get; set; }

        public int DimA { get; set; }

        public int DimB { get; set; }

        public int DimC { get; set; }

        public int DimD { get; set; }

        public int DimE { get; set; }

        public int DimF { get; set; }

        public int DimF1 { get; set; }

        public int DimF2 { get; set; }

        public int DimG { get; set; }

        public int DimH { get; set; }

        public int DimH1 { get; set; }

        public int DimH2 { get; set; }

        public int DimH3 { get; set; }

        public int DimI { get; set; }

        public int DimJ { get; set; }

        public int DimK { get; set; }

        public int DimL { get; set; }

        public int DimM { get; set; }

        public int DimN { get; set; }

        public int DimN1 { get; set; }

        public int DimN2 { get; set; }

        public string DimNxS { get; set; }

        public int DimO { get; set; }

        public int DimOD { get; set; }

        public int DimP { get; set; }

        public int DimPhi { get; set; }

        public int DimQ { get; set; }

        public int DimR { get; set; }

        public int DimS { get; set; }

        public int DimSetCentres { get; set; }

        public int DimSetHeight { get; set; }

        public int DimSetLength { get; set; }

        public int DimSetWidth { get; set; }

        public int DimT { get; set; }

        public int DimT1m { get; set; }

        public int DimTm { get; set; }

        public string DimUxS { get; set; }

        public int DimV { get; set; }

        public int DimV1 { get; set; }

        public int DimV2 { get; set; }

        public int DimW { get; set; }

        public int DimX { get; set; }

        public int DimY { get; set; }

        public int DimZ { get; set; }

        public string Drawing { get; set; }

        public float DrivenPower { get; set; }

        //public int Drives { get; set; }

        public float FanArea { get; set; }

        public int FanBlades { get; set; }

        public int FanClass { get; set; }

        public string FanCode { get; set; }

        public string FanDescription { get; set; }

        public int FanIndex { get; set; }

        public string FanKey { get; set; }

        public float FanMotorFLC { get; set; }

        public string FanMotorFrame { get; set; }

        public int FanMotorHz { get; set; }

        public int FanMotorPoles { get; set; }

        public float FanMotorRating { get; set; }

        public int FanMotorSize { get; set; }

        public int FanMotorSpeed { get; set; }

        public float FanMotorSTC { get; set; }

        public float FanMotorWeight { get; set; }

        public int FanShaft { get; set; }

        public int FanSize { get; set; }

        public float FanSpeed { get; set; }

        public int FanStyle { get; set; }

        public float FanWeight { get; set; }

        public int FanWidth { get; set; }

        public float ImpellerDiameter { get; set; }

        public float InletDuctDiameter { get; set; }

        public float Inlet_LPA_Overall { get; set; }

        public float Inlet_LWA_Overall { get; set; }

        public float Inlet_LwLin_Overall { get; set; }

        public float JFan { get; set; }

        public float MaxPower { get; set; }

        public int MaxSpeed { get; set; }

        public float Outlet_LPA_Overall { get; set; }

        public float Outlet_LWA_Overall { get; set; }

        public float Outlet_LwLin_Overall { get; set; }

        public float PressureFactor { get; set; }

        public int Product { get; set; }

        public float PwrCondition { get; set; }

        public float PwrStandard { get; set; }
        public int Speed { get; set; }

        public SelectInfoModel SelectInfo { get; set; }

        public float StaticEff { get; set; }

        public float StaticPressure { get; set; }

        public string TempRange { get; set; }

        public float TipSpeed { get; set; }

        public float TotalEff { get; set; }

        public float TotalPressure { get; set; }

        public float VelPressure { get; set; }
    }
}
