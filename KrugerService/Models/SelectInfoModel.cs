using System;

namespace KrugerService.Models
{
    public sealed class SelectInfoModel
    {
        public float Altitude { get; set; }
        public int AltitudeUnit { get; set; }
        public int BladeType { get; set; }
        public int CallType { get; set; }
        public int Debug { get; set; }
        public int DebugSize { get; set; }
        public string DebugType { get; set; }
        public int DriveType { get; set; }
        public int FanArrangement { get; set; }
        public int FanCasing { get; set; }
        public int FanGroup { get; set; }
        public int FanSize { get; set; }
        public int FanWidth { get; set; }
        public int Hz { get; set; }
        public int Inverter { get; set; }
        public int MinClass { get; set; }
        public int MinStyle { get; set; }
        public int OutletType { get; set; }
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
        public int PressureType { get; set; }
        public int PressureUnit { get; set; }
        public int ProductType { get; set; }
        public string RecordDirectory { get; set; }
        public float ServiceFactor { get; set; }
        public int SoundCondition { get; set; }
        public float SoundDistance { get; set; }
        public int SoundDistanceUnit { get; set; }
        public int Speed { get; set; }
        public float Temperature { get; set; }
        public int TemperatureUnit { get; set; }
        public int VelocityUnit { get; set; }
        public int Volts { get; set; }
        public float Volume { get; set; }
        public int VolumeUnit { get; set; }
    }
}
