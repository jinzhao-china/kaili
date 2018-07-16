using System;

namespace RestAPIHost
{
    public sealed class SelectInfoModel
    {
        public float Altitude { get; set; }
        //public AltitudeUnit AltitudeUnit { get; set; }
        //public BladeType BladeType { get; set; }
        public int CallType { get; set; }
        public int Debug { get; set; }
        public int DebugSize { get; set; }
        public string DebugType { get; set; }
        public int DriveType { get; set; }
        //public FanArrangement FanArrangement { get; set; }
        //public FanCasing FanCasing { get; set; }
        //public FanGroup FanGroup { get; set; }
        public int FanSize { get; set; }
        public int FanWidth { get; set; }
        public int Hz { get; set; }
        public int Inverter { get; set; }
        //public FanClass MinClass { get; set; }
        public int MinStyle { get; set; }
        //public OutletType OutletType { get; set; }
        public int Phase { get; set; }
        public int PlenumChamberDesign { get; set; }
        public int PlenumChamberHeight { get; set; }
        public int PlenumChamberLength { get; set; }
        public int PlenumChamberWidth { get; set; }
        public int PlenumOutletDesign { get; set; }
        public int PlenumOutletDiameter { get; set; }
        public int PlenumOutletHeight { get; set; }
        public int PlenumOutletType { get; set; }
        public int PlenumOutletWidth { get; set; }
        public float Pressure { get; set; }
        //public PressureType PressureType { get; set; }
        //public PressureUnit PressureUnit { get; set; }
        //public Product ProductType { get; set; }
        public string RecordDirectory { get; set; }
        public float ServiceFactor { get; set; }
        //public SoundCondition SoundCondition { get; set; }
        public float SoundDistance { get; set; }
        //public DistanceUnit SoundDistanceUnit { get; set; }
        public int Speed { get; set; }
        public float Temperature { get; set; }
        //public TemperatureUnit TemperatureUnit { get; set; }
        //public VelocityUnit VelocityUnit { get; set; }
        public int Volts { get; set; }
        public float Volume { get; set; }
        //public VolumeUnit VolumeUnit { get; set; }
    }
}
