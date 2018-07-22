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

        private SelectInfo createSelectInfo()
        {
            SelectInfo si = new SelectInfo();
            String path = String.Format("{0}\\{1}", System.AppDomain.CurrentDomain.BaseDirectory, "test\\Records\\");

            si.RecordDirectory = path;

            return si;
        }

        [HttpPost]
        public SpectrumModel SoundSpectrumEx([FromBody]FanModel model)
        {
            SpectrumModel outModel = new SpectrumModel();

            log.Debug("Modle Speed :  " + model.Speed);
            log.Debug("Modle Debug :  " + model.Debug);

            Fan f = createFan(model);

            f.SelectInfo = createSelectInfo();

            log.Debug("Path : " + f.SelectInfo.RecordDirectory);

            Spectrum stm = KrugerUtil.SoundSpectrumEx(f, model.Speed, model.Debug);
            outModel.Inlet_LPA_Overall = stm.Inlet_LPA_Overall;
            outModel.Inlet_LpA_Spectrum = stm.Inlet_LpA_Spectrum;
            outModel.Inlet_LWA_Overall = stm.Inlet_LWA_Overall;
            outModel.Inlet_LwA_Spectrum = stm.Inlet_LwA_Spectrum;
            outModel.Inlet_LwLin_Overall = stm.Inlet_LwLin_Overall;
            outModel.Inlet_LwLin_Spectrum = stm.Inlet_LwLin_Spectrum;


            outModel.Outlet_LPA_Overall = stm.Outlet_LPA_Overall;
            outModel.Outlet_LpA_Spectrum = stm.Outlet_LpA_Spectrum;
            outModel.Outlet_LWA_Overall = stm.Outlet_LWA_Overall;
            outModel.Outlet_LwA_Spectrum = stm.Outlet_LwA_Spectrum;
            outModel.Outlet_LwLin_Overall = stm.Outlet_LwLin_Overall;
            outModel.Outlet_LwLin_Spectrum = stm.Outlet_LwLin_Spectrum;

            return outModel;
        }

        [HttpPost]
        public CurveModel CurvePoints([FromBody]FanModel model)
        {
            CurveModel outModel = new CurveModel();

            log.Debug(model.Speed);

            Fan f = createFan(model);

            f.SelectInfo = createSelectInfo();

            Curve cre = KrugerUtil.CurvePoints(f, model.Speed);
            outModel.VolumePoints = cre.VolumePoints;
            outModel.PressurePoints = cre.PressurePoints;
            outModel.PowerPoints = cre.PowerPoints;

            return outModel;
        }

        private Fan createFan(FanModel f)
        {
            Fan fan = new Fan();

            fan.AirVelocity = f.AirVelocity;

            fan.AMCAPressure = f.AMCAPressure;

            fan.AMCAVolume = f.AMCAVolume;

            fan.BearingLoad = f.BearingLoad;

            fan.BladeType = (BladeType)Enum.ToObject(typeof(BladeType), f.BladeType);

            fan.DataPoint = f.DataPoint;

            fan.Density = f.Density;

            fan.DimA = f.DimA;

            fan.DimB = f.DimB;

            fan.DimC = f.DimC;

            fan.DimD = f.DimD;

            fan.DimE = f.DimE;

            fan.DimF = f.DimF;

            fan.DimF1 = f.DimF1;

            fan.DimF2 = f.DimF2;

            fan.DimG = f.DimG;

            fan.DimH = f.DimH;

            fan.DimH1 = f.DimH1;

            fan.DimH2 = f.DimH2;

            fan.DimH3 = f.DimH3;

            fan.DimI = f.DimI;

            fan.DimJ = f.DimJ;

            fan.DimK = f.DimK;

            fan.DimL = f.DimL;

            fan.DimM = f.DimM;

            fan.DimN = f.DimN;

            fan.DimN1 = f.DimN1;

            fan.DimN2 = f.DimN2;

            fan.DimNxS = f.DimNxS;

            fan.DimO = f.DimO;

            fan.DimOD = f.DimOD;

            fan.DimP = f.DimP;

            fan.DimPhi = f.DimPhi;

            fan.DimQ = f.DimQ;

            fan.DimR = f.DimR;

            fan.DimS = f.DimS;

            fan.DimSetCentres = f.DimSetCentres;

            fan.DimSetHeight = f.DimSetHeight;

            fan.DimSetLength = f.DimSetLength;

            fan.DimSetWidth = f.DimSetWidth;

            fan.DimT = f.DimT;

            fan.DimT1m = f.DimT1m;

            fan.DimTm = f.DimTm;

            fan.DimUxS = f.DimUxS;

            fan.DimV = f.DimV;

            fan.DimV1 = f.DimV1;

            fan.DimV2 = f.DimV2;

            fan.DimW = f.DimW;

            fan.DimX = f.DimX;

            fan.DimY = f.DimY;

            fan.DimZ = f.DimZ;

            fan.Drawing = f.Drawing;

            fan.DrivenPower = f.DrivenPower;

            fan.FanArea = f.FanArea;

            fan.FanBlades = f.FanBlades;

            fan.FanClass = (FanClass)Enum.ToObject(typeof(FanClass), f.FanClass);

            fan.FanCode = f.FanCode;

            fan.FanDescription = f.FanDescription;

            fan.FanIndex = f.FanIndex;

            fan.FanKey = f.FanKey;

            fan.FanMotorFLC = f.FanMotorFLC;

            fan.FanMotorFrame = f.FanMotorFrame;

            fan.FanMotorHz = f.FanMotorHz;

            fan.FanMotorPoles = f.FanMotorPoles;

            fan.FanMotorRating = f.FanMotorRating;

            fan.FanMotorSize = f.FanMotorSize;

            fan.FanMotorSpeed = f.FanMotorSpeed;

            fan.FanMotorSTC = f.FanMotorSTC;

            fan.FanMotorWeight = f.FanMotorWeight;

            fan.FanShaft = f.FanShaft;

            fan.FanSize = f.FanSize;

            fan.FanSpeed = f.FanSpeed;

            fan.FanStyle = (FanStyle)Enum.ToObject(typeof(FanStyle), f.FanStyle);

            fan.FanWeight = f.FanWeight;

            fan.FanWidth = (FanWidth)Enum.ToObject(typeof(FanWidth), f.FanWidth);

            fan.ImpellerDiameter = f.ImpellerDiameter;

            fan.InletDuctDiameter = f.InletDuctDiameter;

            fan.Inlet_LPA_Overall = f.Inlet_LPA_Overall;

            fan.Inlet_LWA_Overall = f.Inlet_LWA_Overall;

            fan.Inlet_LwLin_Overall = f.Inlet_LwLin_Overall;

            fan.JFan = f.JFan;

            fan.MaxPower = f.MaxPower;

            fan.MaxSpeed = f.MaxSpeed;

            fan.Outlet_LPA_Overall = f.Outlet_LPA_Overall;

            fan.Outlet_LWA_Overall = f.Outlet_LWA_Overall;

            fan.Outlet_LwLin_Overall = f.Outlet_LwLin_Overall;

            fan.PressureFactor = f.PressureFactor;

            fan.Product = (Product)Enum.ToObject(typeof(Product), f.Product);

            fan.PwrCondition = f.PwrCondition;

            fan.PwrStandard = f.PwrStandard;

            fan.StaticEff = f.StaticEff;

            fan.StaticPressure = f.StaticPressure;

            fan.TempRange = f.TempRange;

            fan.TipSpeed = f.TipSpeed;

            fan.TotalEff = f.TotalEff;

            fan.TotalPressure = f.TotalPressure;

            fan.VelPressure = f.VelPressure;
            return fan;
        }

        [HttpPost]
        public List<FanModel> Select([FromBody]SelectInfoModel model)
        {
            SelectInfo si = new SelectInfo();

            String path = String.Format("{0}\\{1}", System.AppDomain.CurrentDomain.BaseDirectory, "test\\Records\\");

            si.RecordDirectory = path;
            si.Volume = model.Volume;
            si.Pressure = model.Pressure;
            si.VolumeUnit = (VolumeUnit)model.VolumeUnit;
            si.PressureUnit = (PressureUnit)model.PressureUnit;
            si.PressureType = (PressureType)model.PressureType;
            si.CallType = model.CallType;
            si.Debug = model.Debug;
            si.Hz = model.Hz;
            si.Temperature = model.Temperature;
            si.Altitude = model.Altitude;
            si.ProductType = (Product)model.ProductType;
            si.MinStyle = model.MinStyle;
            si.MinClass = (FanClass)model.MinClass;
            si.SoundCondition = (SoundCondition)model.SoundCondition;
            si.FanCasing = (FanCasing)model.FanCasing;
            si.FanWidth = model.FanWidth;
            si.VelocityUnit = (VelocityUnit)model.VelocityUnit;
            si.OutletType = (OutletType)model.OutletType;
            si.ServiceFactor = model.ServiceFactor;
            si.AltitudeUnit = (AltitudeUnit)model.AltitudeUnit;
            si.SoundDistance = model.SoundDistance;
            si.SoundDistanceUnit = (DistanceUnit)model.SoundDistanceUnit;
            si.TemperatureUnit = (TemperatureUnit)model.TemperatureUnit;

            log.Debug(si);
            Fans fanList = KrugerUtil.Select(si);

           
            List<FanModel> modelList = new List<FanModel>();

            for(int i = 1; i < fanList.Count; i++)
            {
                Fan f = fanList.Item(i);
                FanModel fModel = createFanModel(f);
                modelList.Add(fModel);
            }
            
            return modelList;
        }

        private FanModel createFanModel(Fan f)
        {
            FanModel fan = new FanModel();

            fan.AirVelocity = f.AirVelocity;

            fan.AMCAPressure = f.AMCAPressure;

            fan.AMCAVolume = f.AMCAVolume;

            fan.BearingLoad = f.BearingLoad;

            fan.BladeType = (int)f.BladeType;

            fan.DataPoint = f.DataPoint;

            fan.Density = f.Density;

            fan.DimA = f.DimA;

            fan.DimB = f.DimB;

            fan.DimC = f.DimC;

            fan.DimD = f.DimD;

            fan.DimE = f.DimE;

            fan.DimF = f.DimF;

            fan.DimF1 = f.DimF1;

            fan.DimF2 = f.DimF2;

            fan.DimG = f.DimG;

            fan.DimH = f.DimH;

            fan.DimH1 = f.DimH1;

            fan.DimH2 = f.DimH2;

            fan.DimH3 = f.DimH3;

            fan.DimI = f.DimI;

            fan.DimJ = f.DimJ;

            fan.DimK = f.DimK;

            fan.DimL = f.DimL;

            fan.DimM = f.DimM;

            fan.DimN = f.DimN;

            fan.DimN1 = f.DimN1;

            fan.DimN2 = f.DimN2;

            fan.DimNxS = f.DimNxS;

            fan.DimO = f.DimO;

            fan.DimOD = f.DimOD;

            fan.DimP = f.DimP;

            fan.DimPhi = f.DimPhi;

            fan.DimQ = f.DimQ;

            fan.DimR = f.DimR;

            fan.DimS = f.DimS;

            fan.DimSetCentres = f.DimSetCentres;

            fan.DimSetHeight = f.DimSetHeight;

            fan.DimSetLength = f.DimSetLength;

            fan.DimSetWidth = f.DimSetWidth;

            fan.DimT = f.DimT;

            fan.DimT1m = f.DimT1m;

            fan.DimTm = f.DimTm;

            fan.DimUxS = f.DimUxS;

            fan.DimV = f.DimV;

            fan.DimV1 = f.DimV1;

            fan.DimV2 = f.DimV2;

            fan.DimW = f.DimW;

            fan.DimX = f.DimX;

            fan.DimY = f.DimY;

            fan.DimZ = f.DimZ;

            fan.Drawing = f.Drawing;

            fan.DrivenPower = f.DrivenPower;

            fan.FanArea = f.FanArea;

            fan.FanBlades = f.FanBlades;

            fan.FanClass = (int)f.FanClass;

            fan.FanCode = f.FanCode;

            fan.FanDescription = f.FanDescription;

            fan.FanIndex = f.FanIndex;

            fan.FanKey = f.FanKey;

            fan.FanMotorFLC = f.FanMotorFLC;

            fan.FanMotorFrame = f.FanMotorFrame;

            fan.FanMotorHz = f.FanMotorHz;

            fan.FanMotorPoles = f.FanMotorPoles;

            fan.FanMotorRating = f.FanMotorRating;

            fan.FanMotorSize = f.FanMotorSize;

            fan.FanMotorSpeed = f.FanMotorSpeed;

            fan.FanMotorSTC = f.FanMotorSTC;

            fan.FanMotorWeight = f.FanMotorWeight;

            fan.FanShaft = f.FanShaft;

            fan.FanSize = f.FanSize;

            fan.FanSpeed = f.FanSpeed;

            fan.FanStyle = (int)f.FanStyle;

            fan.FanWeight = f.FanWeight;

            fan.FanWidth = (int)f.FanWidth;

            fan.ImpellerDiameter = f.ImpellerDiameter;

            fan.InletDuctDiameter = f.InletDuctDiameter;

            fan.Inlet_LPA_Overall = f.Inlet_LPA_Overall;

            fan.Inlet_LWA_Overall = f.Inlet_LWA_Overall;

            fan.Inlet_LwLin_Overall = f.Inlet_LwLin_Overall;

            fan.JFan = f.JFan;

            fan.MaxPower = f.MaxPower;

            fan.MaxSpeed = f.MaxSpeed;

            fan.Outlet_LPA_Overall = f.Outlet_LPA_Overall;

            fan.Outlet_LWA_Overall = f.Outlet_LWA_Overall;

            fan.Outlet_LwLin_Overall = f.Outlet_LwLin_Overall;

            fan.PressureFactor = f.PressureFactor;

            fan.Product = (int)f.Product;

            fan.PwrCondition = f.PwrCondition;

            fan.PwrStandard = f.PwrStandard;

            fan.StaticEff = f.StaticEff;

            fan.StaticPressure = f.StaticPressure;

            fan.TempRange = f.TempRange;

            fan.TipSpeed = f.TipSpeed;

            fan.TotalEff = f.TotalEff;

            fan.TotalPressure = f.TotalPressure;

            fan.VelPressure = f.VelPressure;
            return fan;
        }
    }
}
