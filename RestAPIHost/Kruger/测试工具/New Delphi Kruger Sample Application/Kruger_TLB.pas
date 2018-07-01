unit Kruger_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : 1.2
// File generated on 14/12/2009 16:32:52 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Paramet\Kruger Ventilation - Solar & Palau\KVSP Version 11\Run Time\Selector\Paramet.dll (1)
// LIBID: {9AE7EBC0-70AC-4BD4-B348-DC0392D1D858}
// LCID: 0
// Helpfile: 
// HelpString: Kruger Select COM DLL
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\system32\stdole2.tlb)
// ************************************************************************ //
// *************************************************************************//
// NOTE:                                                                      
// Items guarded by $IFDEF_LIVE_SERVER_AT_DESIGN_TIME are used by properties  
// which return objects that may need to be explicitly created via a function 
// call prior to any access via the property. These items have been disabled  
// in order to prevent accidental use from within the object inspector. You   
// may enable them by defining LIVE_SERVER_AT_DESIGN_TIME or by selectively   
// removing them from the $IFDEF blocks. However, such items must still be    
// programmatically created via a method of the appropriate CoClass before    
// they can be used.                                                          
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, OleServer, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  KrugerMajorVersion = 1;
  KrugerMinorVersion = 0;

  LIBID_Kruger: TGUID = '{9AE7EBC0-70AC-4BD4-B348-DC0392D1D858}';

  IID_IFans: TGUID = '{2862A43B-56C8-4B1D-AA6B-5BFD64F8A6BA}';
  CLASS_Fans: TGUID = '{507224A9-6F9F-46A0-8705-06B0E2A007FD}';
  IID_ICentSelect: TGUID = '{07CC2C23-BF0A-4BC4-BD3E-331C7F3ACC13}';
  CLASS_CentSelect: TGUID = '{72003764-90DF-45CD-80F4-6EC01125CE19}';
  IID_IFan: TGUID = '{6E9DCC84-E665-4F8E-8EFE-21BB134ACD4A}';
  CLASS_Fan: TGUID = '{9B17A020-9BF4-49CE-84AE-F837F5C3D365}';
  IID_ICurve: TGUID = '{B695BFED-08D3-4E7C-8113-964EB367738C}';
  CLASS_Curve: TGUID = '{9FFEC580-C71F-4168-9270-FE183EFCE9B9}';
  IID_ISpectrum: TGUID = '{1ACD95B4-0037-41DC-BA3B-9D048B0AF7B3}';
  CLASS_Spectrum: TGUID = '{6CF7C13D-8AEE-4B3C-9CAF-1950B8649738}';
  IID_IDrive: TGUID = '{EF41C783-AD89-45DE-B21E-5B36E2CB84D7}';
  CLASS_Drive: TGUID = '{8984DA06-1711-4019-86CA-46E63E1717F4}';
  IID_IDrives: TGUID = '{A92CE544-AD6D-4A8A-A8E1-087F7C993548}';
  CLASS_Drives: TGUID = '{3BC2E711-2A4A-45E4-B351-490B92B7F028}';
  IID_IDriveInfo: TGUID = '{E106870A-A9CA-4244-A422-E72D077403A4}';
  CLASS_DriveInfo: TGUID = '{126D2D73-7A5D-414E-AA58-336387C31252}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum Product
type
  Product = TOleEnum;
const
  KAT = $00000001;
  FSA = $00000002;
  FDA = $00000003;
  ASA = $00000004;
  ADA = $00000005;
  BSA = $00000006;
  BSB = $00000007;
  BDA = $00000008;
  BDB = $00000009;
  ptAny = $00000000;
  ANA = $0000000A;
  BNA = $0000000B;
  CBP = $0000000D;
  DAZ = $0000000C;
  CFT = $0000000E;
  BPFM = $0000000F;

// Constants for enum BladeType
type
  BladeType = TOleEnum;
const
  btForwardCurve = $00000001;
  btBackwardCurve = $00000002;
  btAirfoil = $00000003;
  btAny = $00000000;

// Constants for enum VolumeUnit
type
  VolumeUnit = TOleEnum;
const
  vuM3S = $00000000;
  vuM3H = $00000001;
  vuLS = $00000002;
  vuCFM = $00000003;

// Constants for enum PressureUnit
type
  PressureUnit = TOleEnum;
const
  puPa = $00000000;
  puNm2 = $00000001;
  puMMwg = $00000002;
  puInwg = $00000003;

// Constants for enum PressureType
type
  PressureType = TOleEnum;
const
  ptStatic = $00000000;
  ptTotal = $00000001;

// Constants for enum FanClass
type
  FanClass = TOleEnum;
const
  fcI = $00000000;
  fcII = $00000001;
  fcIII = $00000002;

// Constants for enum DistanceUnit
type
  DistanceUnit = TOleEnum;
const
  duFT = $00000000;
  duM = $00000001;

// Constants for enum TemperatureUnit
type
  TemperatureUnit = TOleEnum;
const
  DegreeC = $00000000;
  DegreeF = $00000001;

// Constants for enum AltitudeUnit
type
  AltitudeUnit = TOleEnum;
const
  auFT = $00000000;
  auM = $00000001;

// Constants for enum OutletType
type
  OutletType = TOleEnum;
const
  otDucted = $00000000;
  otFree = $00000001;

// Constants for enum FanCasing
type
  FanCasing = TOleEnum;
const
  fcSingleScroll = $00000000;
  fcTwinScroll = $00000001;
  fcSingleFrame = $00000002;
  fcTwinFrame = $00000003;
  fcSingleUFrame = $00000004;
  fcSingleUSmoke = $00000005;
  fcPlenumURadial = $00000006;
  fcPlenumURadialBell = $00000007;
  fcPlenumUAxial = $00000008;
  fcPlenumUAxialBell = $00000009;
  fcPlenumTRadial = $0000000A;
  fcPlenumTRadialBell = $0000000B;
  fcPlenumTAxial = $0000000C;
  fcPlenumTAxialBell = $0000000D;
  fcPlenumDRadial = $0000000E;
  fcPlenumDRadialBell = $0000000F;
  fcPlenumDAxial = $00000010;
  fcPlenumDAxialBell = $00000011;

// Constants for enum FanHanding
type
  FanHanding = TOleEnum;
const
  fhCW90 = $00000000;
  fhCW180 = $00000001;
  fhCW270 = $00000002;
  fhCW360 = $00000003;
  fhCCW90 = $00000004;
  fhCCW180 = $00000005;
  fhCCW270 = $00000006;
  fhCCW360 = $00000007;

// Constants for enum FanArrangement
type
  FanArrangement = TOleEnum;
const
  faBare = $00000000;
  faSet = $00000001;

// Constants for enum MotorPosition
type
  MotorPosition = TOleEnum;
const
  mpZ = $00000001;
  mpW = $00000002;
  mpNone = $00000000;

// Constants for enum VelocityUnit
type
  VelocityUnit = TOleEnum;
const
  vuMS = $00000000;
  vuFTM = $00000001;

// Constants for enum SoundCondition
type
  SoundCondition = TOleEnum;
const
  scRoom = $00000000;
  scField = $00000001;

// Constants for enum FanStyle
type
  FanStyle = TOleEnum;
const
  fsS = $00000000;
  fsC = $00000001;
  fsT = $00000002;
  fsX = $00000003;
  fsZ = $00000004;
  fsUI = $00000005;
  fsUII = $00000006;
  fsUIII = $00000007;
  fsS2 = $00000008;
  fsC2 = $00000009;
  fsT2 = $0000000A;
  fsFI = $0000000B;
  fsFII = $0000000C;
  fsFIII = $0000000D;
  fsTI = $0000000E;
  fsTII = $0000000F;
  fsTIII = $00000010;
  fsDI = $00000011;
  fsDII = $00000012;
  fsDIII = $00000013;
  fsBPFM = $00000014;
  fsDA_NT = $00000015;
  fsDA_RT = $00000016;
  fsDA_RTC = $00000017;
  fsDA_RTCE = $00000018;
  fsDA_N2T = $00000019;
  fsDA_R2TC = $0000001A;
  fsDA_R2TCE = $0000001B;
  fsCBP = $0000001C;
  fsCBP_R = $0000001D;
  fsCBP_RC = $0000001E;
  fsCBP_RE = $0000001F;
  fsCBP_D = $00000020;
  fsCBP_DC = $00000021;
  fsCBP_DE = $00000022;

// Constants for enum PlenumType
type
  PlenumType = TOleEnum;
const
  dtTBelt = $00000000;
  dtDDirect = $00000001;
  dtUBelt = $00000002;

// Constants for enum FanGroup
type
  FanGroup = TOleEnum;
const
  fgCentrifugal = $00000000;
  fgPlenum = $00000001;

// Constants for enum DriveType
type
  DriveType = TOleEnum;
const
  dtBelt = $00000000;
  dtDirect = $00000001;

// Constants for enum MinStyle
type
  MinStyle = TOleEnum;
const
  msSC = $00000000;
  msT = $00000001;
  msX = $00000002;
  msZ = $00000003;
  msPD = $00000004;
  msPT = $00000005;
  msPU = $00000006;

// Constants for enum FanWidth
type
  FanWidth = TOleEnum;
const
  fwAny = $00000000;
  fwSingle = $00000001;
  fwDouble = $00000002;

// Constants for enum BearingLoad
type
  BearingLoad = TOleEnum;
const
  beLight = $00000000;
  beMedium = $00000001;
  beHeavy = $00000002;
  beExtra = $00000003;

// Constants for enum PlenumChamberSize
type
  PlenumChamberSize = TOleEnum;
const
  pdDefault = $00000000;
  pdUserDefined = $00000001;

// Constants for enum PlenumOutletSize
type
  PlenumOutletSize = TOleEnum;
const
  poDefault = $00000000;
  poUserDefined = $00000001;

// Constants for enum eChartOutput
type
  eChartOutput = TOleEnum;
const
  coGIF = $00000000;
  coBMP = $00000001;
  coWMF = $00000002;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IFans = interface;
  IFansDisp = dispinterface;
  ICentSelect = interface;
  ICentSelectDisp = dispinterface;
  IFan = interface;
  IFanDisp = dispinterface;
  ICurve = interface;
  ICurveDisp = dispinterface;
  ISpectrum = interface;
  ISpectrumDisp = dispinterface;
  IDrive = interface;
  IDriveDisp = dispinterface;
  IDrives = interface;
  IDrivesDisp = dispinterface;
  IDriveInfo = interface;
  IDriveInfoDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  Fans = IFans;
  CentSelect = ICentSelect;
  Fan = IFan;
  Curve = ICurve;
  Spectrum = ISpectrum;
  Drive = IDrive;
  Drives = IDrives;
  DriveInfo = IDriveInfo;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  PUserType1 = ^SelectInfo; {*}

  SelectInfo = packed record
    Volume: Single;
    Pressure: Single;
    PressureType: PressureType;
    VolumeUnit: VolumeUnit;
    PressureUnit: PressureUnit;
    CallType: Integer;
    FanSize: Integer;
    MinStyle: Integer;
    MinClass: FanClass;
    SoundDistance: Single;
    Hz: Integer;
    Temperature: Single;
    TemperatureUnit: TemperatureUnit;
    SoundDistanceUnit: DistanceUnit;
    Altitude: Single;
    AltitudeUnit: AltitudeUnit;
    ServiceFactor: Single;
    OutletType: OutletType;
    BladeType: BladeType;
    ProductType: Product;
    FanCasing: FanCasing;
    FanWidth: Integer;
    VelocityUnit: VelocityUnit;
    SoundCondition: SoundCondition;
    RecordDirectory: WideString;
    FanGroup: FanGroup;
    FanArrangement: FanArrangement;
    DriveType: Integer;
    Debug: Integer;
    Phase: Integer;
    PlenumChamberDesign: Integer;
    PlenumOutletDesign: Integer;
    Volts: Integer;
    PlenumOutletDiameter: Integer;
    PlenumChamberHeight: Integer;
    PlenumChamberWidth: Integer;
    PlenumChamberLength: Integer;
    PlenumOutletType: Integer;
    PlenumOutletWidth: Integer;
    PlenumOutletHeight: Integer;
    Speed: Integer;
    Inverter: Integer;
    DebugSize: Integer;
    DebugType: WideString;
  end;


// *********************************************************************//
// Interface: IFans
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {2862A43B-56C8-4B1D-AA6B-5BFD64F8A6BA}
// *********************************************************************//
  IFans = interface(IDispatch)
    ['{2862A43B-56C8-4B1D-AA6B-5BFD64F8A6BA}']
    function Get__NewEnum: IUnknown; safecall;
    function Get_Count: Integer; safecall;
    function Get_SelectInfo: SelectInfo; safecall;
    function Item(Index: Integer): IDispatch; safecall;
    function Get_Rejections: WideString; safecall;
    procedure Set_Rejections(const Value: WideString); safecall;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Count: Integer read Get_Count;
    property SelectInfo: SelectInfo read Get_SelectInfo;
    property Rejections: WideString read Get_Rejections write Set_Rejections;
  end;

// *********************************************************************//
// DispIntf:  IFansDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {2862A43B-56C8-4B1D-AA6B-5BFD64F8A6BA}
// *********************************************************************//
  IFansDisp = dispinterface
    ['{2862A43B-56C8-4B1D-AA6B-5BFD64F8A6BA}']
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 1;
    property SelectInfo: {??SelectInfo}OleVariant readonly dispid 2;
    function Item(Index: Integer): IDispatch; dispid 0;
    property Rejections: WideString dispid 201;
  end;

// *********************************************************************//
// Interface: ICentSelect
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {07CC2C23-BF0A-4BC4-BD3E-331C7F3ACC13}
// *********************************************************************//
  ICentSelect = interface(IDispatch)
    ['{07CC2C23-BF0A-4BC4-BD3E-331C7F3ACC13}']
    function Select(var info: SelectInfo): IDispatch; safecall;
    function IsValid(var info: SelectInfo): WordBool; safecall;
    function About: WideString; safecall;
    function CurvePoints(const Fan: Fan; Speed: Integer): ICurve; safecall;
    function SoundSpectrum(var FanItem: Fan; Speed: Integer): IDispatch; safecall;
    function SoundSpectrumEx(var FanItem: Fan; Speed: Integer; Debug: WordBool): IDispatch; safecall;
    function SelectEx(var info: SelectInfo; kfactor: Single): IDispatch; safecall;
    procedure GenerateChart(const Fan: Fan; const FileName: WideString; Width: Integer; 
                            Height: Integer; ChartOutput: eChartOutput); safecall;
  end;

// *********************************************************************//
// DispIntf:  ICentSelectDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {07CC2C23-BF0A-4BC4-BD3E-331C7F3ACC13}
// *********************************************************************//
  ICentSelectDisp = dispinterface
    ['{07CC2C23-BF0A-4BC4-BD3E-331C7F3ACC13}']
    function Select(var info: {??SelectInfo}OleVariant): IDispatch; dispid 1;
    function IsValid(var info: {??SelectInfo}OleVariant): WordBool; dispid 2;
    function About: WideString; dispid 3;
    function CurvePoints(const Fan: Fan; Speed: Integer): ICurve; dispid 4;
    function SoundSpectrum(var FanItem: Fan; Speed: Integer): IDispatch; dispid 5;
    function SoundSpectrumEx(var FanItem: Fan; Speed: Integer; Debug: WordBool): IDispatch; dispid 6;
    function SelectEx(var info: {??SelectInfo}OleVariant; kfactor: Single): IDispatch; dispid 201;
    procedure GenerateChart(const Fan: Fan; const FileName: WideString; Width: Integer; 
                            Height: Integer; ChartOutput: eChartOutput); dispid 202;
  end;

// *********************************************************************//
// Interface: IFan
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {6E9DCC84-E665-4F8E-8EFE-21BB134ACD4A}
// *********************************************************************//
  IFan = interface(IDispatch)
    ['{6E9DCC84-E665-4F8E-8EFE-21BB134ACD4A}']
    function Get_FanMotorFrame: WideString; safecall;
    procedure Set_FanMotorFrame(const Value: WideString); safecall;
    function Get_FanMotorRating: Single; safecall;
    procedure Set_FanMotorRating(Value: Single); safecall;
    function Get_FanMotorFLC: Single; safecall;
    procedure Set_FanMotorFLC(Value: Single); safecall;
    function Get_FanMotorSTC: Single; safecall;
    procedure Set_FanMotorSTC(Value: Single); safecall;
    function Get_FanMotorWeight: Single; safecall;
    procedure Set_FanMotorWeight(Value: Single); safecall;
    function Get_FanMotorSize: Integer; safecall;
    procedure Set_FanMotorSize(Value: Integer); safecall;
    function Get_FanMotorSpeed: Integer; safecall;
    procedure Set_FanMotorSpeed(Value: Integer); safecall;
    function Get_FanMotorPoles: Integer; safecall;
    procedure Set_FanMotorPoles(Value: Integer); safecall;
    function Get_Drives: IDrives; safecall;
    function Get_FanKey: WideString; safecall;
    procedure Set_FanKey(const Value: WideString); safecall;
    function Get_FanShaft: Integer; safecall;
    procedure Set_FanShaft(Value: Integer); safecall;
    function Get_FanSize: Integer; safecall;
    procedure Set_FanSize(Value: Integer); safecall;
    function Get_Product: Product; safecall;
    procedure Set_Product(Value: Product); safecall;
    function Get_BladeType: BladeType; safecall;
    procedure Set_BladeType(Value: BladeType); safecall;
    function Get_FanCode: WideString; safecall;
    procedure Set_FanCode(const Value: WideString); safecall;
    function Get_FanWidth: FanWidth; safecall;
    procedure Set_FanWidth(Value: FanWidth); safecall;
    function Get_FanClass: FanClass; safecall;
    procedure Set_FanClass(Value: FanClass); safecall;
    function Get_FanIndex: Integer; safecall;
    procedure Set_FanIndex(Value: Integer); safecall;
    function Get_FanArea: Single; safecall;
    procedure Set_FanArea(Value: Single); safecall;
    function Get_MaxSpeed: Integer; safecall;
    procedure Set_MaxSpeed(Value: Integer); safecall;
    function Get_MaxPower: Single; safecall;
    procedure Set_MaxPower(Value: Single); safecall;
    function Get_TempRange: WideString; safecall;
    procedure Set_TempRange(const Value: WideString); safecall;
    function Get_AirVelocity: Single; safecall;
    procedure Set_AirVelocity(Value: Single); safecall;
    function Get_VelPressure: Single; safecall;
    procedure Set_VelPressure(Value: Single); safecall;
    function Get_StaticPressure: Single; safecall;
    procedure Set_StaticPressure(Value: Single); safecall;
    function Get_TotalPressure: Single; safecall;
    procedure Set_TotalPressure(Value: Single); safecall;
    function Get_TipSpeed: Single; safecall;
    procedure Set_TipSpeed(Value: Single); safecall;
    function Get_FanSpeed: Single; safecall;
    procedure Set_FanSpeed(Value: Single); safecall;
    function Get_PwrStandard: Single; safecall;
    procedure Set_PwrStandard(Value: Single); safecall;
    function Get_PwrCondition: Single; safecall;
    procedure Set_PwrCondition(Value: Single); safecall;
    function Get_Density: Single; safecall;
    procedure Set_Density(Value: Single); safecall;
    function Get_StaticEff: Single; safecall;
    procedure Set_StaticEff(Value: Single); safecall;
    function Get_TotalEff: Single; safecall;
    procedure Set_TotalEff(Value: Single); safecall;
    function Get_FanWeight: Single; safecall;
    procedure Set_FanWeight(Value: Single); safecall;
    function Get_PressureFactor: Single; safecall;
    procedure Set_PressureFactor(Value: Single); safecall;
    function Get_SelectInfo: SelectInfo; safecall;
    procedure Set_SelectInfo(Value: SelectInfo); safecall;
    function Get_FanStyle: FanStyle; safecall;
    procedure Set_FanStyle(Value: FanStyle); safecall;
    function Get_FanDescription: WideString; safecall;
    procedure Set_FanDescription(const Value: WideString); safecall;
    function Get_Inlet_LwLin_Overall: Single; safecall;
    procedure Set_Inlet_LwLin_Overall(Value: Single); safecall;
    function Get_Inlet_LPA_Overall: Single; safecall;
    procedure Set_Inlet_LPA_Overall(Value: Single); safecall;
    function Get_Inlet_LWA_Overall: Single; safecall;
    procedure Set_Inlet_LWA_Overall(Value: Single); safecall;
    function Get_Outlet_LwLin_Overall: Single; safecall;
    procedure Set_Outlet_LwLin_Overall(Value: Single); safecall;
    function Get_Outlet_LPA_Overall: Single; safecall;
    procedure Set_Outlet_LPA_Overall(Value: Single); safecall;
    function Get_Outlet_LWA_Overall: Single; safecall;
    procedure Set_Outlet_LWA_Overall(Value: Single); safecall;
    function Get_AMCAVolume: Single; safecall;
    procedure Set_AMCAVolume(Value: Single); safecall;
    function Get_AMCAPressure: Single; safecall;
    procedure Set_AMCAPressure(Value: Single); safecall;
    function Get_InletDuctDiameter: Single; safecall;
    procedure Set_InletDuctDiameter(Value: Single); safecall;
    function Get_ImpellerDiameter: Single; safecall;
    procedure Set_ImpellerDiameter(Value: Single); safecall;
    function Get_FanBlades: Integer; safecall;
    procedure Set_FanBlades(Value: Integer); safecall;
    function Get_DataPoint: Integer; safecall;
    procedure Set_DataPoint(Value: Integer); safecall;
    function Get_JFan: Single; safecall;
    procedure Set_JFan(Value: Single); safecall;
    function Get_BearingLoad: Integer; safecall;
    procedure Set_BearingLoad(Value: Integer); safecall;
    function Get_DimA: Integer; safecall;
    procedure Set_DimA(Value: Integer); safecall;
    function Get_DimB: Integer; safecall;
    procedure Set_DimB(Value: Integer); safecall;
    function Get_DimC: Integer; safecall;
    procedure Set_DimC(Value: Integer); safecall;
    function Get_DimG: Integer; safecall;
    procedure Set_DimG(Value: Integer); safecall;
    function Get_DimJ: Integer; safecall;
    procedure Set_DimJ(Value: Integer); safecall;
    function Get_DimK: Integer; safecall;
    procedure Set_DimK(Value: Integer); safecall;
    function Get_DimM: Integer; safecall;
    procedure Set_DimM(Value: Integer); safecall;
    function Get_DimP: Integer; safecall;
    procedure Set_DimP(Value: Integer); safecall;
    function Get_DimR: Integer; safecall;
    procedure Set_DimR(Value: Integer); safecall;
    function Get_DimQ: Integer; safecall;
    procedure Set_DimQ(Value: Integer); safecall;
    function Get_FanMotorHz: Integer; safecall;
    procedure Set_FanMotorHz(Value: Integer); safecall;
    function Get_DrivenPower: Single; safecall;
    procedure Set_DrivenPower(Value: Single); safecall;
    function Get_DimD: Integer; safecall;
    procedure Set_DimD(Value: Integer); safecall;
    function Get_DimE: Integer; safecall;
    procedure Set_DimE(Value: Integer); safecall;
    function Get_DimF: Integer; safecall;
    procedure Set_DimF(Value: Integer); safecall;
    function Get_DimF1: Integer; safecall;
    procedure Set_DimF1(Value: Integer); safecall;
    function Get_DimF2: Integer; safecall;
    procedure Set_DimF2(Value: Integer); safecall;
    function Get_DimH: Integer; safecall;
    procedure Set_DimH(Value: Integer); safecall;
    function Get_DimL: Integer; safecall;
    procedure Set_DimL(Value: Integer); safecall;
    function Get_DimN: Integer; safecall;
    procedure Set_DimN(Value: Integer); safecall;
    function Get_DimN1: Integer; safecall;
    procedure Set_DimN1(Value: Integer); safecall;
    function Get_DimN2: Integer; safecall;
    procedure Set_DimN2(Value: Integer); safecall;
    function Get_DimS: Integer; safecall;
    procedure Set_DimS(Value: Integer); safecall;
    function Get_DimV: Integer; safecall;
    procedure Set_DimV(Value: Integer); safecall;
    function Get_DimX: Integer; safecall;
    procedure Set_DimX(Value: Integer); safecall;
    function Get_DimY: Integer; safecall;
    procedure Set_DimY(Value: Integer); safecall;
    function Get_DimH1: Integer; safecall;
    procedure Set_DimH1(Value: Integer); safecall;
    function Get_DimH2: Integer; safecall;
    procedure Set_DimH2(Value: Integer); safecall;
    function Get_DimH3: Integer; safecall;
    procedure Set_DimH3(Value: Integer); safecall;
    function Get_DimTm: Integer; safecall;
    procedure Set_DimTm(Value: Integer); safecall;
    function Get_DimT1m: Integer; safecall;
    procedure Set_DimT1m(Value: Integer); safecall;
    function Get_DimW: Integer; safecall;
    procedure Set_DimW(Value: Integer); safecall;
    function Get_DimZ: Integer; safecall;
    procedure Set_DimZ(Value: Integer); safecall;
    function Get_DimUxS: WideString; safecall;
    procedure Set_DimUxS(const Value: WideString); safecall;
    function Get_DimV1: Integer; safecall;
    procedure Set_DimV1(Value: Integer); safecall;
    function Get_DimV2: Integer; safecall;
    procedure Set_DimV2(Value: Integer); safecall;
    function Get_DimNxS: WideString; safecall;
    procedure Set_DimNxS(const Value: WideString); safecall;
    function Get_DimOD: Integer; safecall;
    procedure Set_DimOD(Value: Integer); safecall;
    function Get_DimSetCentres: Integer; safecall;
    procedure Set_DimSetCentres(Value: Integer); safecall;
    function Get_DimSetLength: Integer; safecall;
    procedure Set_DimSetLength(Value: Integer); safecall;
    function Get_DimSetWidth: Integer; safecall;
    procedure Set_DimSetWidth(Value: Integer); safecall;
    function Get_DimSetHeight: Integer; safecall;
    procedure Set_DimSetHeight(Value: Integer); safecall;
    function Get_DimI: Integer; safecall;
    procedure Set_DimI(Value: Integer); safecall;
    function Get_DimO: Integer; safecall;
    procedure Set_DimO(Value: Integer); safecall;
    function Get_DimPhi: Integer; safecall;
    procedure Set_DimPhi(Value: Integer); safecall;
    function Get_DimT: Integer; safecall;
    procedure Set_DimT(Value: Integer); safecall;
    function Get_Drawing: WideString; safecall;
    procedure Set_Drawing(const Value: WideString); safecall;
    property FanMotorFrame: WideString read Get_FanMotorFrame write Set_FanMotorFrame;
    property FanMotorRating: Single read Get_FanMotorRating write Set_FanMotorRating;
    property FanMotorFLC: Single read Get_FanMotorFLC write Set_FanMotorFLC;
    property FanMotorSTC: Single read Get_FanMotorSTC write Set_FanMotorSTC;
    property FanMotorWeight: Single read Get_FanMotorWeight write Set_FanMotorWeight;
    property FanMotorSize: Integer read Get_FanMotorSize write Set_FanMotorSize;
    property FanMotorSpeed: Integer read Get_FanMotorSpeed write Set_FanMotorSpeed;
    property FanMotorPoles: Integer read Get_FanMotorPoles write Set_FanMotorPoles;
    property Drives: IDrives read Get_Drives;
    property FanKey: WideString read Get_FanKey write Set_FanKey;
    property FanShaft: Integer read Get_FanShaft write Set_FanShaft;
    property FanSize: Integer read Get_FanSize write Set_FanSize;
    property Product: Product read Get_Product write Set_Product;
    property BladeType: BladeType read Get_BladeType write Set_BladeType;
    property FanCode: WideString read Get_FanCode write Set_FanCode;
    property FanWidth: FanWidth read Get_FanWidth write Set_FanWidth;
    property FanClass: FanClass read Get_FanClass write Set_FanClass;
    property FanIndex: Integer read Get_FanIndex write Set_FanIndex;
    property FanArea: Single read Get_FanArea write Set_FanArea;
    property MaxSpeed: Integer read Get_MaxSpeed write Set_MaxSpeed;
    property MaxPower: Single read Get_MaxPower write Set_MaxPower;
    property TempRange: WideString read Get_TempRange write Set_TempRange;
    property AirVelocity: Single read Get_AirVelocity write Set_AirVelocity;
    property VelPressure: Single read Get_VelPressure write Set_VelPressure;
    property StaticPressure: Single read Get_StaticPressure write Set_StaticPressure;
    property TotalPressure: Single read Get_TotalPressure write Set_TotalPressure;
    property TipSpeed: Single read Get_TipSpeed write Set_TipSpeed;
    property FanSpeed: Single read Get_FanSpeed write Set_FanSpeed;
    property PwrStandard: Single read Get_PwrStandard write Set_PwrStandard;
    property PwrCondition: Single read Get_PwrCondition write Set_PwrCondition;
    property Density: Single read Get_Density write Set_Density;
    property StaticEff: Single read Get_StaticEff write Set_StaticEff;
    property TotalEff: Single read Get_TotalEff write Set_TotalEff;
    property FanWeight: Single read Get_FanWeight write Set_FanWeight;
    property PressureFactor: Single read Get_PressureFactor write Set_PressureFactor;
    property SelectInfo: SelectInfo read Get_SelectInfo write Set_SelectInfo;
    property FanStyle: FanStyle read Get_FanStyle write Set_FanStyle;
    property FanDescription: WideString read Get_FanDescription write Set_FanDescription;
    property Inlet_LwLin_Overall: Single read Get_Inlet_LwLin_Overall write Set_Inlet_LwLin_Overall;
    property Inlet_LPA_Overall: Single read Get_Inlet_LPA_Overall write Set_Inlet_LPA_Overall;
    property Inlet_LWA_Overall: Single read Get_Inlet_LWA_Overall write Set_Inlet_LWA_Overall;
    property Outlet_LwLin_Overall: Single read Get_Outlet_LwLin_Overall write Set_Outlet_LwLin_Overall;
    property Outlet_LPA_Overall: Single read Get_Outlet_LPA_Overall write Set_Outlet_LPA_Overall;
    property Outlet_LWA_Overall: Single read Get_Outlet_LWA_Overall write Set_Outlet_LWA_Overall;
    property AMCAVolume: Single read Get_AMCAVolume write Set_AMCAVolume;
    property AMCAPressure: Single read Get_AMCAPressure write Set_AMCAPressure;
    property InletDuctDiameter: Single read Get_InletDuctDiameter write Set_InletDuctDiameter;
    property ImpellerDiameter: Single read Get_ImpellerDiameter write Set_ImpellerDiameter;
    property FanBlades: Integer read Get_FanBlades write Set_FanBlades;
    property DataPoint: Integer read Get_DataPoint write Set_DataPoint;
    property JFan: Single read Get_JFan write Set_JFan;
    property BearingLoad: Integer read Get_BearingLoad write Set_BearingLoad;
    property DimA: Integer read Get_DimA write Set_DimA;
    property DimB: Integer read Get_DimB write Set_DimB;
    property DimC: Integer read Get_DimC write Set_DimC;
    property DimG: Integer read Get_DimG write Set_DimG;
    property DimJ: Integer read Get_DimJ write Set_DimJ;
    property DimK: Integer read Get_DimK write Set_DimK;
    property DimM: Integer read Get_DimM write Set_DimM;
    property DimP: Integer read Get_DimP write Set_DimP;
    property DimR: Integer read Get_DimR write Set_DimR;
    property DimQ: Integer read Get_DimQ write Set_DimQ;
    property FanMotorHz: Integer read Get_FanMotorHz write Set_FanMotorHz;
    property DrivenPower: Single read Get_DrivenPower write Set_DrivenPower;
    property DimD: Integer read Get_DimD write Set_DimD;
    property DimE: Integer read Get_DimE write Set_DimE;
    property DimF: Integer read Get_DimF write Set_DimF;
    property DimF1: Integer read Get_DimF1 write Set_DimF1;
    property DimF2: Integer read Get_DimF2 write Set_DimF2;
    property DimH: Integer read Get_DimH write Set_DimH;
    property DimL: Integer read Get_DimL write Set_DimL;
    property DimN: Integer read Get_DimN write Set_DimN;
    property DimN1: Integer read Get_DimN1 write Set_DimN1;
    property DimN2: Integer read Get_DimN2 write Set_DimN2;
    property DimS: Integer read Get_DimS write Set_DimS;
    property DimV: Integer read Get_DimV write Set_DimV;
    property DimX: Integer read Get_DimX write Set_DimX;
    property DimY: Integer read Get_DimY write Set_DimY;
    property DimH1: Integer read Get_DimH1 write Set_DimH1;
    property DimH2: Integer read Get_DimH2 write Set_DimH2;
    property DimH3: Integer read Get_DimH3 write Set_DimH3;
    property DimTm: Integer read Get_DimTm write Set_DimTm;
    property DimT1m: Integer read Get_DimT1m write Set_DimT1m;
    property DimW: Integer read Get_DimW write Set_DimW;
    property DimZ: Integer read Get_DimZ write Set_DimZ;
    property DimUxS: WideString read Get_DimUxS write Set_DimUxS;
    property DimV1: Integer read Get_DimV1 write Set_DimV1;
    property DimV2: Integer read Get_DimV2 write Set_DimV2;
    property DimNxS: WideString read Get_DimNxS write Set_DimNxS;
    property DimOD: Integer read Get_DimOD write Set_DimOD;
    property DimSetCentres: Integer read Get_DimSetCentres write Set_DimSetCentres;
    property DimSetLength: Integer read Get_DimSetLength write Set_DimSetLength;
    property DimSetWidth: Integer read Get_DimSetWidth write Set_DimSetWidth;
    property DimSetHeight: Integer read Get_DimSetHeight write Set_DimSetHeight;
    property DimI: Integer read Get_DimI write Set_DimI;
    property DimO: Integer read Get_DimO write Set_DimO;
    property DimPhi: Integer read Get_DimPhi write Set_DimPhi;
    property DimT: Integer read Get_DimT write Set_DimT;
    property Drawing: WideString read Get_Drawing write Set_Drawing;
  end;

// *********************************************************************//
// DispIntf:  IFanDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {6E9DCC84-E665-4F8E-8EFE-21BB134ACD4A}
// *********************************************************************//
  IFanDisp = dispinterface
    ['{6E9DCC84-E665-4F8E-8EFE-21BB134ACD4A}']
    property FanMotorFrame: WideString dispid 201;
    property FanMotorRating: Single dispid 202;
    property FanMotorFLC: Single dispid 203;
    property FanMotorSTC: Single dispid 204;
    property FanMotorWeight: Single dispid 205;
    property FanMotorSize: Integer dispid 206;
    property FanMotorSpeed: Integer dispid 209;
    property FanMotorPoles: Integer dispid 210;
    property Drives: IDrives readonly dispid 211;
    property FanKey: WideString dispid 212;
    property FanShaft: Integer dispid 213;
    property FanSize: Integer dispid 214;
    property Product: Product dispid 215;
    property BladeType: BladeType dispid 216;
    property FanCode: WideString dispid 217;
    property FanWidth: FanWidth dispid 218;
    property FanClass: FanClass dispid 219;
    property FanIndex: Integer dispid 220;
    property FanArea: Single dispid 221;
    property MaxSpeed: Integer dispid 222;
    property MaxPower: Single dispid 223;
    property TempRange: WideString dispid 224;
    property AirVelocity: Single dispid 225;
    property VelPressure: Single dispid 226;
    property StaticPressure: Single dispid 227;
    property TotalPressure: Single dispid 228;
    property TipSpeed: Single dispid 229;
    property FanSpeed: Single dispid 230;
    property PwrStandard: Single dispid 231;
    property PwrCondition: Single dispid 232;
    property Density: Single dispid 233;
    property StaticEff: Single dispid 234;
    property TotalEff: Single dispid 235;
    property FanWeight: Single dispid 236;
    property PressureFactor: Single dispid 237;
    property SelectInfo: {??SelectInfo}OleVariant dispid 238;
    property FanStyle: FanStyle dispid 239;
    property FanDescription: WideString dispid 240;
    property Inlet_LwLin_Overall: Single dispid 241;
    property Inlet_LPA_Overall: Single dispid 242;
    property Inlet_LWA_Overall: Single dispid 243;
    property Outlet_LwLin_Overall: Single dispid 244;
    property Outlet_LPA_Overall: Single dispid 245;
    property Outlet_LWA_Overall: Single dispid 246;
    property AMCAVolume: Single dispid 208;
    property AMCAPressure: Single dispid 247;
    property InletDuctDiameter: Single dispid 248;
    property ImpellerDiameter: Single dispid 249;
    property FanBlades: Integer dispid 250;
    property DataPoint: Integer dispid 251;
    property JFan: Single dispid 207;
    property BearingLoad: Integer dispid 252;
    property DimA: Integer dispid 254;
    property DimB: Integer dispid 253;
    property DimC: Integer dispid 255;
    property DimG: Integer dispid 256;
    property DimJ: Integer dispid 257;
    property DimK: Integer dispid 258;
    property DimM: Integer dispid 259;
    property DimP: Integer dispid 260;
    property DimR: Integer dispid 261;
    property DimQ: Integer dispid 262;
    property FanMotorHz: Integer dispid 263;
    property DrivenPower: Single dispid 264;
    property DimD: Integer dispid 265;
    property DimE: Integer dispid 266;
    property DimF: Integer dispid 267;
    property DimF1: Integer dispid 268;
    property DimF2: Integer dispid 269;
    property DimH: Integer dispid 270;
    property DimL: Integer dispid 271;
    property DimN: Integer dispid 272;
    property DimN1: Integer dispid 273;
    property DimN2: Integer dispid 274;
    property DimS: Integer dispid 275;
    property DimV: Integer dispid 276;
    property DimX: Integer dispid 277;
    property DimY: Integer dispid 278;
    property DimH1: Integer dispid 279;
    property DimH2: Integer dispid 280;
    property DimH3: Integer dispid 281;
    property DimTm: Integer dispid 282;
    property DimT1m: Integer dispid 283;
    property DimW: Integer dispid 284;
    property DimZ: Integer dispid 285;
    property DimUxS: WideString dispid 286;
    property DimV1: Integer dispid 287;
    property DimV2: Integer dispid 288;
    property DimNxS: WideString dispid 289;
    property DimOD: Integer dispid 290;
    property DimSetCentres: Integer dispid 291;
    property DimSetLength: Integer dispid 292;
    property DimSetWidth: Integer dispid 293;
    property DimSetHeight: Integer dispid 294;
    property DimI: Integer dispid 295;
    property DimO: Integer dispid 296;
    property DimPhi: Integer dispid 298;
    property DimT: Integer dispid 297;
    property Drawing: WideString dispid 299;
  end;

// *********************************************************************//
// Interface: ICurve
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {B695BFED-08D3-4E7C-8113-964EB367738C}
// *********************************************************************//
  ICurve = interface(IDispatch)
    ['{B695BFED-08D3-4E7C-8113-964EB367738C}']
    function Get_VolumePoints: PSafeArray; safecall;
    procedure Set_VolumePoints(Value: PSafeArray); safecall;
    function Get_PressurePoints: PSafeArray; safecall;
    procedure Set_PressurePoints(Value: PSafeArray); safecall;
    function Get_PowerPoints: PSafeArray; safecall;
    procedure Set_PowerPoints(Value: PSafeArray); safecall;
    property VolumePoints: PSafeArray read Get_VolumePoints write Set_VolumePoints;
    property PressurePoints: PSafeArray read Get_PressurePoints write Set_PressurePoints;
    property PowerPoints: PSafeArray read Get_PowerPoints write Set_PowerPoints;
  end;

// *********************************************************************//
// DispIntf:  ICurveDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {B695BFED-08D3-4E7C-8113-964EB367738C}
// *********************************************************************//
  ICurveDisp = dispinterface
    ['{B695BFED-08D3-4E7C-8113-964EB367738C}']
    property VolumePoints: {??PSafeArray}OleVariant dispid 201;
    property PressurePoints: {??PSafeArray}OleVariant dispid 202;
    property PowerPoints: {??PSafeArray}OleVariant dispid 203;
  end;

// *********************************************************************//
// Interface: ISpectrum
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {1ACD95B4-0037-41DC-BA3B-9D048B0AF7B3}
// *********************************************************************//
  ISpectrum = interface(IDispatch)
    ['{1ACD95B4-0037-41DC-BA3B-9D048B0AF7B3}']
    function Get_Inlet_LwLin_Overall: Single; safecall;
    function Get_Inlet_LwLin_Spectrum: PSafeArray; safecall;
    function Get_Inlet_LWA_Overall: Single; safecall;
    function Get_Inlet_LwA_Spectrum: PSafeArray; safecall;
    function Get_Inlet_LPA_Overall: Single; safecall;
    function Get_Inlet_LpA_Spectrum: PSafeArray; safecall;
    function Get_Outlet_LwLin_Overall: Single; safecall;
    function Get_Outlet_LwLin_Spectrum: PSafeArray; safecall;
    function Get_Outlet_LWA_Overall: Single; safecall;
    function Get_Outlet_LwA_Spectrum: PSafeArray; safecall;
    function Get_Outlet_LPA_Overall: Single; safecall;
    function Get_Outlet_LpA_Spectrum: PSafeArray; safecall;
    property Inlet_LwLin_Overall: Single read Get_Inlet_LwLin_Overall;
    property Inlet_LwLin_Spectrum: PSafeArray read Get_Inlet_LwLin_Spectrum;
    property Inlet_LWA_Overall: Single read Get_Inlet_LWA_Overall;
    property Inlet_LwA_Spectrum: PSafeArray read Get_Inlet_LwA_Spectrum;
    property Inlet_LPA_Overall: Single read Get_Inlet_LPA_Overall;
    property Inlet_LpA_Spectrum: PSafeArray read Get_Inlet_LpA_Spectrum;
    property Outlet_LwLin_Overall: Single read Get_Outlet_LwLin_Overall;
    property Outlet_LwLin_Spectrum: PSafeArray read Get_Outlet_LwLin_Spectrum;
    property Outlet_LWA_Overall: Single read Get_Outlet_LWA_Overall;
    property Outlet_LwA_Spectrum: PSafeArray read Get_Outlet_LwA_Spectrum;
    property Outlet_LPA_Overall: Single read Get_Outlet_LPA_Overall;
    property Outlet_LpA_Spectrum: PSafeArray read Get_Outlet_LpA_Spectrum;
  end;

// *********************************************************************//
// DispIntf:  ISpectrumDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {1ACD95B4-0037-41DC-BA3B-9D048B0AF7B3}
// *********************************************************************//
  ISpectrumDisp = dispinterface
    ['{1ACD95B4-0037-41DC-BA3B-9D048B0AF7B3}']
    property Inlet_LwLin_Overall: Single readonly dispid 1;
    property Inlet_LwLin_Spectrum: {??PSafeArray}OleVariant readonly dispid 2;
    property Inlet_LWA_Overall: Single readonly dispid 3;
    property Inlet_LwA_Spectrum: {??PSafeArray}OleVariant readonly dispid 4;
    property Inlet_LPA_Overall: Single readonly dispid 5;
    property Inlet_LpA_Spectrum: {??PSafeArray}OleVariant readonly dispid 6;
    property Outlet_LwLin_Overall: Single readonly dispid 7;
    property Outlet_LwLin_Spectrum: {??PSafeArray}OleVariant readonly dispid 8;
    property Outlet_LWA_Overall: Single readonly dispid 9;
    property Outlet_LwA_Spectrum: {??PSafeArray}OleVariant readonly dispid 10;
    property Outlet_LPA_Overall: Single readonly dispid 11;
    property Outlet_LpA_Spectrum: {??PSafeArray}OleVariant readonly dispid 12;
  end;

// *********************************************************************//
// Interface: IDrive
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EF41C783-AD89-45DE-B21E-5B36E2CB84D7}
// *********************************************************************//
  IDrive = interface(IDispatch)
    ['{EF41C783-AD89-45DE-B21E-5B36E2CB84D7}']
    function Get_MotorPulleySize: Integer; safecall;
    procedure Set_MotorPulleySize(Value: Integer); safecall;
    function Get_FanPulleySize: Integer; safecall;
    procedure Set_FanPulleySize(Value: Integer); safecall;
    function Get_BeltLength: Integer; safecall;
    procedure Set_BeltLength(Value: Integer); safecall;
    function Get_NumberBelts: Integer; safecall;
    procedure Set_NumberBelts(Value: Integer); safecall;
    function Get_OperatingHoursL10: Single; safecall;
    procedure Set_OperatingHoursL10(Value: Single); safecall;
    function Get_ActualCentres: Single; safecall;
    procedure Set_ActualCentres(Value: Single); safecall;
    function Get_RequiredSpeedRatio: Single; safecall;
    procedure Set_RequiredSpeedRatio(Value: Single); safecall;
    function Get_ActualSpeedRatio: Single; safecall;
    procedure Set_ActualSpeedRatio(Value: Single); safecall;
    function Get_StartingTorque: Single; safecall;
    procedure Set_StartingTorque(Value: Single); safecall;
    function Get_CorrectedBaseLength: Single; safecall;
    procedure Set_CorrectedBaseLength(Value: Single); safecall;
    function Get_ActualBaseLength: Single; safecall;
    procedure Set_ActualBaseLength(Value: Single); safecall;
    function Get_MotorPoles: Integer; safecall;
    procedure Set_MotorPoles(Value: Integer); safecall;
    function Get_ResultsLoop: Integer; safecall;
    procedure Set_ResultsLoop(Value: Integer); safecall;
    function Get_Deviation: Single; safecall;
    procedure Set_Deviation(Value: Single); safecall;
    function Get_FanSpeed: Single; safecall;
    procedure Set_FanSpeed(Value: Single); safecall;
    function Get_DeBugString: WideString; safecall;
    procedure Set_DeBugString(const Value: WideString); safecall;
    function Get_FanBush: Integer; safecall;
    procedure Set_FanBush(Value: Integer); safecall;
    function Get_MotorBush: Integer; safecall;
    procedure Set_MotorBush(Value: Integer); safecall;
    function Get_Actual100Deflection: Single; safecall;
    procedure Set_Actual100Deflection(Value: Single); safecall;
    function Get_ActualFanSpeed: Integer; safecall;
    procedure Set_ActualFanSpeed(Value: Integer); safecall;
    function Get_AdditionalPower: Single; safecall;
    procedure Set_AdditionalPower(Value: Single); safecall;
    function Get_AngularAcceleration: Single; safecall;
    procedure Set_AngularAcceleration(Value: Single); safecall;
    function Get_AngularVelocity: Single; safecall;
    procedure Set_AngularVelocity(Value: Single); safecall;
    function Get_ArcOfContact: Single; safecall;
    procedure Set_ArcOfContact(Value: Single); safecall;
    function Get_BeltDeflection: Single; safecall;
    procedure Set_BeltDeflection(Value: Single); safecall;
    function Get_BeltPower: Single; safecall;
    procedure Set_BeltPower(Value: Single); safecall;
    function Get_BeltSpeed: Single; safecall;
    procedure Set_BeltSpeed(Value: Single); safecall;
    function Get_FanPulleyWeight: Single; safecall;
    procedure Set_FanPulleyWeight(Value: Single); safecall;
    function Get_Force: Single; safecall;
    procedure Set_Force(Value: Single); safecall;
    function Get_JFanPulley: Single; safecall;
    procedure Set_JFanPulley(Value: Single); safecall;
    function Get_JMotorPulley: Single; safecall;
    procedure Set_JMotorPulley(Value: Single); safecall;
    function Get_JTotal: Single; safecall;
    procedure Set_JTotal(Value: Single); safecall;
    function Get_LengthFactor: Single; safecall;
    procedure Set_LengthFactor(Value: Single); safecall;
    function Get_Max100Deflection: Single; safecall;
    procedure Set_Max100Deflection(Value: Single); safecall;
    function Get_MaxBeltDeflection: Single; safecall;
    procedure Set_MaxBeltDeflection(Value: Single); safecall;
    function Get_MaxStaticTension: Single; safecall;
    procedure Set_MaxStaticTension(Value: Single); safecall;
    function Get_FanPulleyDimW: Integer; safecall;
    procedure Set_FanPulleyDimW(Value: Integer); safecall;
    function Get_MotorPulleyDimW: Integer; safecall;
    procedure Set_MotorPulleyDimW(Value: Integer); safecall;
    function Get_MotorPulleyWeight: Single; safecall;
    procedure Set_MotorPulleyWeight(Value: Single); safecall;
    function Get_RatedPower: Single; safecall;
    procedure Set_RatedPower(Value: Single); safecall;
    function Get_TheoBeltLength: Integer; safecall;
    procedure Set_TheoBeltLength(Value: Integer); safecall;
    function Get_StaticTension: Single; safecall;
    procedure Set_StaticTension(Value: Single); safecall;
    function Get_TheoCentres: Single; safecall;
    procedure Set_TheoCentres(Value: Single); safecall;
    function Get_TheoNumberBelts: Single; safecall;
    procedure Set_TheoNumberBelts(Value: Single); safecall;
    function Get_OperatingHoursL50: Single; safecall;
    procedure Set_OperatingHoursL50(Value: Single); safecall;
    function Get_PulleyType: WideString; safecall;
    procedure Set_PulleyType(const Value: WideString); safecall;
    function Get_MotorFrame: WideString; safecall;
    procedure Set_MotorFrame(const Value: WideString); safecall;
    function Get_MotorRating: Single; safecall;
    procedure Set_MotorRating(Value: Single); safecall;
    function Get_MotorSpeed: Integer; safecall;
    procedure Set_MotorSpeed(Value: Integer); safecall;
    function Get_MotorFLC: Single; safecall;
    procedure Set_MotorFLC(Value: Single); safecall;
    function Get_MotorSTC: Single; safecall;
    procedure Set_MotorSTC(Value: Single); safecall;
    function Get_MotorSize: Integer; safecall;
    procedure Set_MotorSize(Value: Integer); safecall;
    function Get_MotorShaft: Integer; safecall;
    procedure Set_MotorShaft(Value: Integer); safecall;
    function Get_MotorKey: WideString; safecall;
    procedure Set_MotorKey(const Value: WideString); safecall;
    function Get_MotorWeight: Single; safecall;
    procedure Set_MotorWeight(Value: Single); safecall;
    function Get_MotorDimEM: Integer; safecall;
    procedure Set_MotorDimEM(Value: Integer); safecall;
    function Get_MotorDimCM: Integer; safecall;
    procedure Set_MotorDimCM(Value: Integer); safecall;
    function Get_MotorDimBM: Integer; safecall;
    procedure Set_MotorDimBM(Value: Integer); safecall;
    function Get_MotorDimHM: Integer; safecall;
    procedure Set_MotorDimHM(Value: Integer); safecall;
    function Get_STMotor: Single; safecall;
    procedure Set_STMotor(Value: Single); safecall;
    function Get_FanWidthStr: WideString; safecall;
    procedure Set_FanWidthStr(const Value: WideString); safecall;
    function Get_FanHeightStr: WideString; safecall;
    procedure Set_FanHeightStr(const Value: WideString); safecall;
    function Get_JMotor: Single; safecall;
    procedure Set_JMotor(Value: Single); safecall;
    property MotorPulleySize: Integer read Get_MotorPulleySize write Set_MotorPulleySize;
    property FanPulleySize: Integer read Get_FanPulleySize write Set_FanPulleySize;
    property BeltLength: Integer read Get_BeltLength write Set_BeltLength;
    property NumberBelts: Integer read Get_NumberBelts write Set_NumberBelts;
    property OperatingHoursL10: Single read Get_OperatingHoursL10 write Set_OperatingHoursL10;
    property ActualCentres: Single read Get_ActualCentres write Set_ActualCentres;
    property RequiredSpeedRatio: Single read Get_RequiredSpeedRatio write Set_RequiredSpeedRatio;
    property ActualSpeedRatio: Single read Get_ActualSpeedRatio write Set_ActualSpeedRatio;
    property StartingTorque: Single read Get_StartingTorque write Set_StartingTorque;
    property CorrectedBaseLength: Single read Get_CorrectedBaseLength write Set_CorrectedBaseLength;
    property ActualBaseLength: Single read Get_ActualBaseLength write Set_ActualBaseLength;
    property MotorPoles: Integer read Get_MotorPoles write Set_MotorPoles;
    property ResultsLoop: Integer read Get_ResultsLoop write Set_ResultsLoop;
    property Deviation: Single read Get_Deviation write Set_Deviation;
    property FanSpeed: Single read Get_FanSpeed write Set_FanSpeed;
    property DeBugString: WideString read Get_DeBugString write Set_DeBugString;
    property FanBush: Integer read Get_FanBush write Set_FanBush;
    property MotorBush: Integer read Get_MotorBush write Set_MotorBush;
    property Actual100Deflection: Single read Get_Actual100Deflection write Set_Actual100Deflection;
    property ActualFanSpeed: Integer read Get_ActualFanSpeed write Set_ActualFanSpeed;
    property AdditionalPower: Single read Get_AdditionalPower write Set_AdditionalPower;
    property AngularAcceleration: Single read Get_AngularAcceleration write Set_AngularAcceleration;
    property AngularVelocity: Single read Get_AngularVelocity write Set_AngularVelocity;
    property ArcOfContact: Single read Get_ArcOfContact write Set_ArcOfContact;
    property BeltDeflection: Single read Get_BeltDeflection write Set_BeltDeflection;
    property BeltPower: Single read Get_BeltPower write Set_BeltPower;
    property BeltSpeed: Single read Get_BeltSpeed write Set_BeltSpeed;
    property FanPulleyWeight: Single read Get_FanPulleyWeight write Set_FanPulleyWeight;
    property Force: Single read Get_Force write Set_Force;
    property JFanPulley: Single read Get_JFanPulley write Set_JFanPulley;
    property JMotorPulley: Single read Get_JMotorPulley write Set_JMotorPulley;
    property JTotal: Single read Get_JTotal write Set_JTotal;
    property LengthFactor: Single read Get_LengthFactor write Set_LengthFactor;
    property Max100Deflection: Single read Get_Max100Deflection write Set_Max100Deflection;
    property MaxBeltDeflection: Single read Get_MaxBeltDeflection write Set_MaxBeltDeflection;
    property MaxStaticTension: Single read Get_MaxStaticTension write Set_MaxStaticTension;
    property FanPulleyDimW: Integer read Get_FanPulleyDimW write Set_FanPulleyDimW;
    property MotorPulleyDimW: Integer read Get_MotorPulleyDimW write Set_MotorPulleyDimW;
    property MotorPulleyWeight: Single read Get_MotorPulleyWeight write Set_MotorPulleyWeight;
    property RatedPower: Single read Get_RatedPower write Set_RatedPower;
    property TheoBeltLength: Integer read Get_TheoBeltLength write Set_TheoBeltLength;
    property StaticTension: Single read Get_StaticTension write Set_StaticTension;
    property TheoCentres: Single read Get_TheoCentres write Set_TheoCentres;
    property TheoNumberBelts: Single read Get_TheoNumberBelts write Set_TheoNumberBelts;
    property OperatingHoursL50: Single read Get_OperatingHoursL50 write Set_OperatingHoursL50;
    property PulleyType: WideString read Get_PulleyType write Set_PulleyType;
    property MotorFrame: WideString read Get_MotorFrame write Set_MotorFrame;
    property MotorRating: Single read Get_MotorRating write Set_MotorRating;
    property MotorSpeed: Integer read Get_MotorSpeed write Set_MotorSpeed;
    property MotorFLC: Single read Get_MotorFLC write Set_MotorFLC;
    property MotorSTC: Single read Get_MotorSTC write Set_MotorSTC;
    property MotorSize: Integer read Get_MotorSize write Set_MotorSize;
    property MotorShaft: Integer read Get_MotorShaft write Set_MotorShaft;
    property MotorKey: WideString read Get_MotorKey write Set_MotorKey;
    property MotorWeight: Single read Get_MotorWeight write Set_MotorWeight;
    property MotorDimEM: Integer read Get_MotorDimEM write Set_MotorDimEM;
    property MotorDimCM: Integer read Get_MotorDimCM write Set_MotorDimCM;
    property MotorDimBM: Integer read Get_MotorDimBM write Set_MotorDimBM;
    property MotorDimHM: Integer read Get_MotorDimHM write Set_MotorDimHM;
    property STMotor: Single read Get_STMotor write Set_STMotor;
    property FanWidthStr: WideString read Get_FanWidthStr write Set_FanWidthStr;
    property FanHeightStr: WideString read Get_FanHeightStr write Set_FanHeightStr;
    property JMotor: Single read Get_JMotor write Set_JMotor;
  end;

// *********************************************************************//
// DispIntf:  IDriveDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EF41C783-AD89-45DE-B21E-5B36E2CB84D7}
// *********************************************************************//
  IDriveDisp = dispinterface
    ['{EF41C783-AD89-45DE-B21E-5B36E2CB84D7}']
    property MotorPulleySize: Integer dispid 202;
    property FanPulleySize: Integer dispid 203;
    property BeltLength: Integer dispid 204;
    property NumberBelts: Integer dispid 205;
    property OperatingHoursL10: Single dispid 206;
    property ActualCentres: Single dispid 207;
    property RequiredSpeedRatio: Single dispid 208;
    property ActualSpeedRatio: Single dispid 209;
    property StartingTorque: Single dispid 210;
    property CorrectedBaseLength: Single dispid 211;
    property ActualBaseLength: Single dispid 212;
    property MotorPoles: Integer dispid 213;
    property ResultsLoop: Integer dispid 214;
    property Deviation: Single dispid 215;
    property FanSpeed: Single dispid 216;
    property DeBugString: WideString dispid 217;
    property FanBush: Integer dispid 219;
    property MotorBush: Integer dispid 221;
    property Actual100Deflection: Single dispid 222;
    property ActualFanSpeed: Integer dispid 223;
    property AdditionalPower: Single dispid 224;
    property AngularAcceleration: Single dispid 225;
    property AngularVelocity: Single dispid 226;
    property ArcOfContact: Single dispid 227;
    property BeltDeflection: Single dispid 228;
    property BeltPower: Single dispid 229;
    property BeltSpeed: Single dispid 230;
    property FanPulleyWeight: Single dispid 231;
    property Force: Single dispid 232;
    property JFanPulley: Single dispid 233;
    property JMotorPulley: Single dispid 234;
    property JTotal: Single dispid 235;
    property LengthFactor: Single dispid 236;
    property Max100Deflection: Single dispid 237;
    property MaxBeltDeflection: Single dispid 238;
    property MaxStaticTension: Single dispid 239;
    property FanPulleyDimW: Integer dispid 240;
    property MotorPulleyDimW: Integer dispid 241;
    property MotorPulleyWeight: Single dispid 242;
    property RatedPower: Single dispid 243;
    property TheoBeltLength: Integer dispid 244;
    property StaticTension: Single dispid 245;
    property TheoCentres: Single dispid 246;
    property TheoNumberBelts: Single dispid 247;
    property OperatingHoursL50: Single dispid 218;
    property PulleyType: WideString dispid 220;
    property MotorFrame: WideString dispid 201;
    property MotorRating: Single dispid 248;
    property MotorSpeed: Integer dispid 249;
    property MotorFLC: Single dispid 250;
    property MotorSTC: Single dispid 251;
    property MotorSize: Integer dispid 252;
    property MotorShaft: Integer dispid 253;
    property MotorKey: WideString dispid 254;
    property MotorWeight: Single dispid 255;
    property MotorDimEM: Integer dispid 256;
    property MotorDimCM: Integer dispid 257;
    property MotorDimBM: Integer dispid 258;
    property MotorDimHM: Integer dispid 259;
    property STMotor: Single dispid 260;
    property FanWidthStr: WideString dispid 261;
    property FanHeightStr: WideString dispid 262;
    property JMotor: Single dispid 263;
  end;

// *********************************************************************//
// Interface: IDrives
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A92CE544-AD6D-4A8A-A8E1-087F7C993548}
// *********************************************************************//
  IDrives = interface(IDispatch)
    ['{A92CE544-AD6D-4A8A-A8E1-087F7C993548}']
    function Get_Count: Integer; safecall;
    function Add(const Drive: IDrive): Integer; safecall;
    procedure Remove(Index: Integer); safecall;
    function Items(Index: Integer): IDrive; safecall;
    function SelectDrives(const Fan: IFan; const DriveInfo: IDriveInfo): Integer; safecall;
    procedure Clear; safecall;
    function Get_ActiveDrive: IDrive; safecall;
    procedure Set_ActiveDrive(const Value: IDrive); safecall;
    property Count: Integer read Get_Count;
    property ActiveDrive: IDrive read Get_ActiveDrive write Set_ActiveDrive;
  end;

// *********************************************************************//
// DispIntf:  IDrivesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A92CE544-AD6D-4A8A-A8E1-087F7C993548}
// *********************************************************************//
  IDrivesDisp = dispinterface
    ['{A92CE544-AD6D-4A8A-A8E1-087F7C993548}']
    property Count: Integer readonly dispid 201;
    function Add(const Drive: IDrive): Integer; dispid 202;
    procedure Remove(Index: Integer); dispid 203;
    function Items(Index: Integer): IDrive; dispid 204;
    function SelectDrives(const Fan: IFan; const DriveInfo: IDriveInfo): Integer; dispid 205;
    procedure Clear; dispid 206;
    property ActiveDrive: IDrive dispid 207;
  end;

// *********************************************************************//
// Interface: IDriveInfo
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E106870A-A9CA-4244-A422-E72D077403A4}
// *********************************************************************//
  IDriveInfo = interface(IDispatch)
    ['{E106870A-A9CA-4244-A422-E72D077403A4}']
    function Get_Distance: Integer; safecall;
    procedure Set_Distance(Value: Integer); safecall;
    function Get_SPZ: WordBool; safecall;
    procedure Set_SPZ(Value: WordBool); safecall;
    function Get_BearingLoad: Integer; safecall;
    procedure Set_BearingLoad(Value: Integer); safecall;
    function Get_StartTime: Integer; safecall;
    procedure Set_StartTime(Value: Integer); safecall;
    function Get_SPA: WordBool; safecall;
    procedure Set_SPA(Value: WordBool); safecall;
    function Get_SPB: WordBool; safecall;
    procedure Set_SPB(Value: WordBool); safecall;
    function Get_SPC: WordBool; safecall;
    procedure Set_SPC(Value: WordBool); safecall;
    function Get_Pole2: WordBool; safecall;
    procedure Set_Pole2(Value: WordBool); safecall;
    function Get_Pole4: WordBool; safecall;
    procedure Set_Pole4(Value: WordBool); safecall;
    function Get_Pole6: WordBool; safecall;
    procedure Set_Pole6(Value: WordBool); safecall;
    function Get_Pole8: WordBool; safecall;
    procedure Set_Pole8(Value: WordBool); safecall;
    function Get_L50_Life: Integer; safecall;
    procedure Set_L50_Life(Value: Integer); safecall;
    function Get_L10_Life: Integer; safecall;
    procedure Set_L10_Life(Value: Integer); safecall;
    function Get_RecordDirectory: WideString; safecall;
    procedure Set_RecordDirectory(const Value: WideString); safecall;
    function Get_FanHanding: FanHanding; safecall;
    procedure Set_FanHanding(Value: FanHanding); safecall;
    function Get_MotorPosition: MotorPosition; safecall;
    procedure Set_MotorPosition(Value: MotorPosition); safecall;
    function Get_FanArrangement: FanArrangement; safecall;
    procedure Set_FanArrangement(Value: FanArrangement); safecall;
    function Get_Debug: WordBool; safecall;
    procedure Set_Debug(Value: WordBool); safecall;
    property Distance: Integer read Get_Distance write Set_Distance;
    property SPZ: WordBool read Get_SPZ write Set_SPZ;
    property BearingLoad: Integer read Get_BearingLoad write Set_BearingLoad;
    property StartTime: Integer read Get_StartTime write Set_StartTime;
    property SPA: WordBool read Get_SPA write Set_SPA;
    property SPB: WordBool read Get_SPB write Set_SPB;
    property SPC: WordBool read Get_SPC write Set_SPC;
    property Pole2: WordBool read Get_Pole2 write Set_Pole2;
    property Pole4: WordBool read Get_Pole4 write Set_Pole4;
    property Pole6: WordBool read Get_Pole6 write Set_Pole6;
    property Pole8: WordBool read Get_Pole8 write Set_Pole8;
    property L50_Life: Integer read Get_L50_Life write Set_L50_Life;
    property L10_Life: Integer read Get_L10_Life write Set_L10_Life;
    property RecordDirectory: WideString read Get_RecordDirectory write Set_RecordDirectory;
    property FanHanding: FanHanding read Get_FanHanding write Set_FanHanding;
    property MotorPosition: MotorPosition read Get_MotorPosition write Set_MotorPosition;
    property FanArrangement: FanArrangement read Get_FanArrangement write Set_FanArrangement;
    property Debug: WordBool read Get_Debug write Set_Debug;
  end;

// *********************************************************************//
// DispIntf:  IDriveInfoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E106870A-A9CA-4244-A422-E72D077403A4}
// *********************************************************************//
  IDriveInfoDisp = dispinterface
    ['{E106870A-A9CA-4244-A422-E72D077403A4}']
    property Distance: Integer dispid 201;
    property SPZ: WordBool dispid 202;
    property BearingLoad: Integer dispid 203;
    property StartTime: Integer dispid 204;
    property SPA: WordBool dispid 205;
    property SPB: WordBool dispid 206;
    property SPC: WordBool dispid 207;
    property Pole2: WordBool dispid 208;
    property Pole4: WordBool dispid 209;
    property Pole6: WordBool dispid 210;
    property Pole8: WordBool dispid 211;
    property L50_Life: Integer dispid 213;
    property L10_Life: Integer dispid 212;
    property RecordDirectory: WideString dispid 215;
    property FanHanding: FanHanding dispid 214;
    property MotorPosition: MotorPosition dispid 216;
    property FanArrangement: FanArrangement dispid 217;
    property Debug: WordBool dispid 218;
  end;

// *********************************************************************//
// The Class CoFans provides a Create and CreateRemote method to          
// create instances of the default interface IFans exposed by              
// the CoClass Fans. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoFans = class
    class function Create: IFans;
    class function CreateRemote(const MachineName: string): IFans;
  end;

// *********************************************************************//
// The Class CoCentSelect provides a Create and CreateRemote method to          
// create instances of the default interface ICentSelect exposed by              
// the CoClass CentSelect. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCentSelect = class
    class function Create: ICentSelect;
    class function CreateRemote(const MachineName: string): ICentSelect;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCentSelect
// Help String      : CentSelect Object
// Default Interface: ICentSelect
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TCentSelectProperties= class;
{$ENDIF}
  TCentSelect = class(TOleServer)
  private
    FIntf:        ICentSelect;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TCentSelectProperties;
    function      GetServerProperties: TCentSelectProperties;
{$ENDIF}
    function      GetDefaultInterface: ICentSelect;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ICentSelect);
    procedure Disconnect; override;
    function Select(var info: SelectInfo): IDispatch;
    function IsValid(var info: SelectInfo): WordBool;
    function About: WideString;
    function CurvePoints(const Fan: Fan; Speed: Integer): ICurve;
    function SoundSpectrum(var FanItem: Fan; Speed: Integer): IDispatch;
    function SoundSpectrumEx(var FanItem: Fan; Speed: Integer; Debug: WordBool): IDispatch;
    function SelectEx(var info: SelectInfo; kfactor: Single): IDispatch;
    procedure GenerateChart(const Fan: Fan; const FileName: WideString; Width: Integer; 
                            Height: Integer; ChartOutput: eChartOutput);
    property DefaultInterface: ICentSelect read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TCentSelectProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TCentSelect
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TCentSelectProperties = class(TPersistent)
  private
    FServer:    TCentSelect;
    function    GetDefaultInterface: ICentSelect;
    constructor Create(AServer: TCentSelect);
  protected
  public
    property DefaultInterface: ICentSelect read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoFan provides a Create and CreateRemote method to          
// create instances of the default interface IFan exposed by              
// the CoClass Fan. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoFan = class
    class function Create: IFan;
    class function CreateRemote(const MachineName: string): IFan;
  end;

// *********************************************************************//
// The Class CoCurve provides a Create and CreateRemote method to          
// create instances of the default interface ICurve exposed by              
// the CoClass Curve. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCurve = class
    class function Create: ICurve;
    class function CreateRemote(const MachineName: string): ICurve;
  end;

// *********************************************************************//
// The Class CoSpectrum provides a Create and CreateRemote method to          
// create instances of the default interface ISpectrum exposed by              
// the CoClass Spectrum. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSpectrum = class
    class function Create: ISpectrum;
    class function CreateRemote(const MachineName: string): ISpectrum;
  end;

// *********************************************************************//
// The Class CoDrive provides a Create and CreateRemote method to          
// create instances of the default interface IDrive exposed by              
// the CoClass Drive. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDrive = class
    class function Create: IDrive;
    class function CreateRemote(const MachineName: string): IDrive;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TDrive
// Help String      : Drive Object
// Default Interface: IDrive
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TDriveProperties= class;
{$ENDIF}
  TDrive = class(TOleServer)
  private
    FIntf:        IDrive;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TDriveProperties;
    function      GetServerProperties: TDriveProperties;
{$ENDIF}
    function      GetDefaultInterface: IDrive;
  protected
    procedure InitServerData; override;
    function Get_MotorPulleySize: Integer;
    procedure Set_MotorPulleySize(Value: Integer);
    function Get_FanPulleySize: Integer;
    procedure Set_FanPulleySize(Value: Integer);
    function Get_BeltLength: Integer;
    procedure Set_BeltLength(Value: Integer);
    function Get_NumberBelts: Integer;
    procedure Set_NumberBelts(Value: Integer);
    function Get_OperatingHoursL10: Single;
    procedure Set_OperatingHoursL10(Value: Single);
    function Get_ActualCentres: Single;
    procedure Set_ActualCentres(Value: Single);
    function Get_RequiredSpeedRatio: Single;
    procedure Set_RequiredSpeedRatio(Value: Single);
    function Get_ActualSpeedRatio: Single;
    procedure Set_ActualSpeedRatio(Value: Single);
    function Get_StartingTorque: Single;
    procedure Set_StartingTorque(Value: Single);
    function Get_CorrectedBaseLength: Single;
    procedure Set_CorrectedBaseLength(Value: Single);
    function Get_ActualBaseLength: Single;
    procedure Set_ActualBaseLength(Value: Single);
    function Get_MotorPoles: Integer;
    procedure Set_MotorPoles(Value: Integer);
    function Get_ResultsLoop: Integer;
    procedure Set_ResultsLoop(Value: Integer);
    function Get_Deviation: Single;
    procedure Set_Deviation(Value: Single);
    function Get_FanSpeed: Single;
    procedure Set_FanSpeed(Value: Single);
    function Get_DeBugString: WideString;
    procedure Set_DeBugString(const Value: WideString);
    function Get_FanBush: Integer;
    procedure Set_FanBush(Value: Integer);
    function Get_MotorBush: Integer;
    procedure Set_MotorBush(Value: Integer);
    function Get_Actual100Deflection: Single;
    procedure Set_Actual100Deflection(Value: Single);
    function Get_ActualFanSpeed: Integer;
    procedure Set_ActualFanSpeed(Value: Integer);
    function Get_AdditionalPower: Single;
    procedure Set_AdditionalPower(Value: Single);
    function Get_AngularAcceleration: Single;
    procedure Set_AngularAcceleration(Value: Single);
    function Get_AngularVelocity: Single;
    procedure Set_AngularVelocity(Value: Single);
    function Get_ArcOfContact: Single;
    procedure Set_ArcOfContact(Value: Single);
    function Get_BeltDeflection: Single;
    procedure Set_BeltDeflection(Value: Single);
    function Get_BeltPower: Single;
    procedure Set_BeltPower(Value: Single);
    function Get_BeltSpeed: Single;
    procedure Set_BeltSpeed(Value: Single);
    function Get_FanPulleyWeight: Single;
    procedure Set_FanPulleyWeight(Value: Single);
    function Get_Force: Single;
    procedure Set_Force(Value: Single);
    function Get_JFanPulley: Single;
    procedure Set_JFanPulley(Value: Single);
    function Get_JMotorPulley: Single;
    procedure Set_JMotorPulley(Value: Single);
    function Get_JTotal: Single;
    procedure Set_JTotal(Value: Single);
    function Get_LengthFactor: Single;
    procedure Set_LengthFactor(Value: Single);
    function Get_Max100Deflection: Single;
    procedure Set_Max100Deflection(Value: Single);
    function Get_MaxBeltDeflection: Single;
    procedure Set_MaxBeltDeflection(Value: Single);
    function Get_MaxStaticTension: Single;
    procedure Set_MaxStaticTension(Value: Single);
    function Get_FanPulleyDimW: Integer;
    procedure Set_FanPulleyDimW(Value: Integer);
    function Get_MotorPulleyDimW: Integer;
    procedure Set_MotorPulleyDimW(Value: Integer);
    function Get_MotorPulleyWeight: Single;
    procedure Set_MotorPulleyWeight(Value: Single);
    function Get_RatedPower: Single;
    procedure Set_RatedPower(Value: Single);
    function Get_TheoBeltLength: Integer;
    procedure Set_TheoBeltLength(Value: Integer);
    function Get_StaticTension: Single;
    procedure Set_StaticTension(Value: Single);
    function Get_TheoCentres: Single;
    procedure Set_TheoCentres(Value: Single);
    function Get_TheoNumberBelts: Single;
    procedure Set_TheoNumberBelts(Value: Single);
    function Get_OperatingHoursL50: Single;
    procedure Set_OperatingHoursL50(Value: Single);
    function Get_PulleyType: WideString;
    procedure Set_PulleyType(const Value: WideString);
    function Get_MotorFrame: WideString;
    procedure Set_MotorFrame(const Value: WideString);
    function Get_MotorRating: Single;
    procedure Set_MotorRating(Value: Single);
    function Get_MotorSpeed: Integer;
    procedure Set_MotorSpeed(Value: Integer);
    function Get_MotorFLC: Single;
    procedure Set_MotorFLC(Value: Single);
    function Get_MotorSTC: Single;
    procedure Set_MotorSTC(Value: Single);
    function Get_MotorSize: Integer;
    procedure Set_MotorSize(Value: Integer);
    function Get_MotorShaft: Integer;
    procedure Set_MotorShaft(Value: Integer);
    function Get_MotorKey: WideString;
    procedure Set_MotorKey(const Value: WideString);
    function Get_MotorWeight: Single;
    procedure Set_MotorWeight(Value: Single);
    function Get_MotorDimEM: Integer;
    procedure Set_MotorDimEM(Value: Integer);
    function Get_MotorDimCM: Integer;
    procedure Set_MotorDimCM(Value: Integer);
    function Get_MotorDimBM: Integer;
    procedure Set_MotorDimBM(Value: Integer);
    function Get_MotorDimHM: Integer;
    procedure Set_MotorDimHM(Value: Integer);
    function Get_STMotor: Single;
    procedure Set_STMotor(Value: Single);
    function Get_FanWidthStr: WideString;
    procedure Set_FanWidthStr(const Value: WideString);
    function Get_FanHeightStr: WideString;
    procedure Set_FanHeightStr(const Value: WideString);
    function Get_JMotor: Single;
    procedure Set_JMotor(Value: Single);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IDrive);
    procedure Disconnect; override;
    property DefaultInterface: IDrive read GetDefaultInterface;
    property MotorPulleySize: Integer read Get_MotorPulleySize write Set_MotorPulleySize;
    property FanPulleySize: Integer read Get_FanPulleySize write Set_FanPulleySize;
    property BeltLength: Integer read Get_BeltLength write Set_BeltLength;
    property NumberBelts: Integer read Get_NumberBelts write Set_NumberBelts;
    property OperatingHoursL10: Single read Get_OperatingHoursL10 write Set_OperatingHoursL10;
    property ActualCentres: Single read Get_ActualCentres write Set_ActualCentres;
    property RequiredSpeedRatio: Single read Get_RequiredSpeedRatio write Set_RequiredSpeedRatio;
    property ActualSpeedRatio: Single read Get_ActualSpeedRatio write Set_ActualSpeedRatio;
    property StartingTorque: Single read Get_StartingTorque write Set_StartingTorque;
    property CorrectedBaseLength: Single read Get_CorrectedBaseLength write Set_CorrectedBaseLength;
    property ActualBaseLength: Single read Get_ActualBaseLength write Set_ActualBaseLength;
    property MotorPoles: Integer read Get_MotorPoles write Set_MotorPoles;
    property ResultsLoop: Integer read Get_ResultsLoop write Set_ResultsLoop;
    property Deviation: Single read Get_Deviation write Set_Deviation;
    property FanSpeed: Single read Get_FanSpeed write Set_FanSpeed;
    property DeBugString: WideString read Get_DeBugString write Set_DeBugString;
    property FanBush: Integer read Get_FanBush write Set_FanBush;
    property MotorBush: Integer read Get_MotorBush write Set_MotorBush;
    property Actual100Deflection: Single read Get_Actual100Deflection write Set_Actual100Deflection;
    property ActualFanSpeed: Integer read Get_ActualFanSpeed write Set_ActualFanSpeed;
    property AdditionalPower: Single read Get_AdditionalPower write Set_AdditionalPower;
    property AngularAcceleration: Single read Get_AngularAcceleration write Set_AngularAcceleration;
    property AngularVelocity: Single read Get_AngularVelocity write Set_AngularVelocity;
    property ArcOfContact: Single read Get_ArcOfContact write Set_ArcOfContact;
    property BeltDeflection: Single read Get_BeltDeflection write Set_BeltDeflection;
    property BeltPower: Single read Get_BeltPower write Set_BeltPower;
    property BeltSpeed: Single read Get_BeltSpeed write Set_BeltSpeed;
    property FanPulleyWeight: Single read Get_FanPulleyWeight write Set_FanPulleyWeight;
    property Force: Single read Get_Force write Set_Force;
    property JFanPulley: Single read Get_JFanPulley write Set_JFanPulley;
    property JMotorPulley: Single read Get_JMotorPulley write Set_JMotorPulley;
    property JTotal: Single read Get_JTotal write Set_JTotal;
    property LengthFactor: Single read Get_LengthFactor write Set_LengthFactor;
    property Max100Deflection: Single read Get_Max100Deflection write Set_Max100Deflection;
    property MaxBeltDeflection: Single read Get_MaxBeltDeflection write Set_MaxBeltDeflection;
    property MaxStaticTension: Single read Get_MaxStaticTension write Set_MaxStaticTension;
    property FanPulleyDimW: Integer read Get_FanPulleyDimW write Set_FanPulleyDimW;
    property MotorPulleyDimW: Integer read Get_MotorPulleyDimW write Set_MotorPulleyDimW;
    property MotorPulleyWeight: Single read Get_MotorPulleyWeight write Set_MotorPulleyWeight;
    property RatedPower: Single read Get_RatedPower write Set_RatedPower;
    property TheoBeltLength: Integer read Get_TheoBeltLength write Set_TheoBeltLength;
    property StaticTension: Single read Get_StaticTension write Set_StaticTension;
    property TheoCentres: Single read Get_TheoCentres write Set_TheoCentres;
    property TheoNumberBelts: Single read Get_TheoNumberBelts write Set_TheoNumberBelts;
    property OperatingHoursL50: Single read Get_OperatingHoursL50 write Set_OperatingHoursL50;
    property PulleyType: WideString read Get_PulleyType write Set_PulleyType;
    property MotorFrame: WideString read Get_MotorFrame write Set_MotorFrame;
    property MotorRating: Single read Get_MotorRating write Set_MotorRating;
    property MotorSpeed: Integer read Get_MotorSpeed write Set_MotorSpeed;
    property MotorFLC: Single read Get_MotorFLC write Set_MotorFLC;
    property MotorSTC: Single read Get_MotorSTC write Set_MotorSTC;
    property MotorSize: Integer read Get_MotorSize write Set_MotorSize;
    property MotorShaft: Integer read Get_MotorShaft write Set_MotorShaft;
    property MotorKey: WideString read Get_MotorKey write Set_MotorKey;
    property MotorWeight: Single read Get_MotorWeight write Set_MotorWeight;
    property MotorDimEM: Integer read Get_MotorDimEM write Set_MotorDimEM;
    property MotorDimCM: Integer read Get_MotorDimCM write Set_MotorDimCM;
    property MotorDimBM: Integer read Get_MotorDimBM write Set_MotorDimBM;
    property MotorDimHM: Integer read Get_MotorDimHM write Set_MotorDimHM;
    property STMotor: Single read Get_STMotor write Set_STMotor;
    property FanWidthStr: WideString read Get_FanWidthStr write Set_FanWidthStr;
    property FanHeightStr: WideString read Get_FanHeightStr write Set_FanHeightStr;
    property JMotor: Single read Get_JMotor write Set_JMotor;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TDriveProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TDrive
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TDriveProperties = class(TPersistent)
  private
    FServer:    TDrive;
    function    GetDefaultInterface: IDrive;
    constructor Create(AServer: TDrive);
  protected
    function Get_MotorPulleySize: Integer;
    procedure Set_MotorPulleySize(Value: Integer);
    function Get_FanPulleySize: Integer;
    procedure Set_FanPulleySize(Value: Integer);
    function Get_BeltLength: Integer;
    procedure Set_BeltLength(Value: Integer);
    function Get_NumberBelts: Integer;
    procedure Set_NumberBelts(Value: Integer);
    function Get_OperatingHoursL10: Single;
    procedure Set_OperatingHoursL10(Value: Single);
    function Get_ActualCentres: Single;
    procedure Set_ActualCentres(Value: Single);
    function Get_RequiredSpeedRatio: Single;
    procedure Set_RequiredSpeedRatio(Value: Single);
    function Get_ActualSpeedRatio: Single;
    procedure Set_ActualSpeedRatio(Value: Single);
    function Get_StartingTorque: Single;
    procedure Set_StartingTorque(Value: Single);
    function Get_CorrectedBaseLength: Single;
    procedure Set_CorrectedBaseLength(Value: Single);
    function Get_ActualBaseLength: Single;
    procedure Set_ActualBaseLength(Value: Single);
    function Get_MotorPoles: Integer;
    procedure Set_MotorPoles(Value: Integer);
    function Get_ResultsLoop: Integer;
    procedure Set_ResultsLoop(Value: Integer);
    function Get_Deviation: Single;
    procedure Set_Deviation(Value: Single);
    function Get_FanSpeed: Single;
    procedure Set_FanSpeed(Value: Single);
    function Get_DeBugString: WideString;
    procedure Set_DeBugString(const Value: WideString);
    function Get_FanBush: Integer;
    procedure Set_FanBush(Value: Integer);
    function Get_MotorBush: Integer;
    procedure Set_MotorBush(Value: Integer);
    function Get_Actual100Deflection: Single;
    procedure Set_Actual100Deflection(Value: Single);
    function Get_ActualFanSpeed: Integer;
    procedure Set_ActualFanSpeed(Value: Integer);
    function Get_AdditionalPower: Single;
    procedure Set_AdditionalPower(Value: Single);
    function Get_AngularAcceleration: Single;
    procedure Set_AngularAcceleration(Value: Single);
    function Get_AngularVelocity: Single;
    procedure Set_AngularVelocity(Value: Single);
    function Get_ArcOfContact: Single;
    procedure Set_ArcOfContact(Value: Single);
    function Get_BeltDeflection: Single;
    procedure Set_BeltDeflection(Value: Single);
    function Get_BeltPower: Single;
    procedure Set_BeltPower(Value: Single);
    function Get_BeltSpeed: Single;
    procedure Set_BeltSpeed(Value: Single);
    function Get_FanPulleyWeight: Single;
    procedure Set_FanPulleyWeight(Value: Single);
    function Get_Force: Single;
    procedure Set_Force(Value: Single);
    function Get_JFanPulley: Single;
    procedure Set_JFanPulley(Value: Single);
    function Get_JMotorPulley: Single;
    procedure Set_JMotorPulley(Value: Single);
    function Get_JTotal: Single;
    procedure Set_JTotal(Value: Single);
    function Get_LengthFactor: Single;
    procedure Set_LengthFactor(Value: Single);
    function Get_Max100Deflection: Single;
    procedure Set_Max100Deflection(Value: Single);
    function Get_MaxBeltDeflection: Single;
    procedure Set_MaxBeltDeflection(Value: Single);
    function Get_MaxStaticTension: Single;
    procedure Set_MaxStaticTension(Value: Single);
    function Get_FanPulleyDimW: Integer;
    procedure Set_FanPulleyDimW(Value: Integer);
    function Get_MotorPulleyDimW: Integer;
    procedure Set_MotorPulleyDimW(Value: Integer);
    function Get_MotorPulleyWeight: Single;
    procedure Set_MotorPulleyWeight(Value: Single);
    function Get_RatedPower: Single;
    procedure Set_RatedPower(Value: Single);
    function Get_TheoBeltLength: Integer;
    procedure Set_TheoBeltLength(Value: Integer);
    function Get_StaticTension: Single;
    procedure Set_StaticTension(Value: Single);
    function Get_TheoCentres: Single;
    procedure Set_TheoCentres(Value: Single);
    function Get_TheoNumberBelts: Single;
    procedure Set_TheoNumberBelts(Value: Single);
    function Get_OperatingHoursL50: Single;
    procedure Set_OperatingHoursL50(Value: Single);
    function Get_PulleyType: WideString;
    procedure Set_PulleyType(const Value: WideString);
    function Get_MotorFrame: WideString;
    procedure Set_MotorFrame(const Value: WideString);
    function Get_MotorRating: Single;
    procedure Set_MotorRating(Value: Single);
    function Get_MotorSpeed: Integer;
    procedure Set_MotorSpeed(Value: Integer);
    function Get_MotorFLC: Single;
    procedure Set_MotorFLC(Value: Single);
    function Get_MotorSTC: Single;
    procedure Set_MotorSTC(Value: Single);
    function Get_MotorSize: Integer;
    procedure Set_MotorSize(Value: Integer);
    function Get_MotorShaft: Integer;
    procedure Set_MotorShaft(Value: Integer);
    function Get_MotorKey: WideString;
    procedure Set_MotorKey(const Value: WideString);
    function Get_MotorWeight: Single;
    procedure Set_MotorWeight(Value: Single);
    function Get_MotorDimEM: Integer;
    procedure Set_MotorDimEM(Value: Integer);
    function Get_MotorDimCM: Integer;
    procedure Set_MotorDimCM(Value: Integer);
    function Get_MotorDimBM: Integer;
    procedure Set_MotorDimBM(Value: Integer);
    function Get_MotorDimHM: Integer;
    procedure Set_MotorDimHM(Value: Integer);
    function Get_STMotor: Single;
    procedure Set_STMotor(Value: Single);
    function Get_FanWidthStr: WideString;
    procedure Set_FanWidthStr(const Value: WideString);
    function Get_FanHeightStr: WideString;
    procedure Set_FanHeightStr(const Value: WideString);
    function Get_JMotor: Single;
    procedure Set_JMotor(Value: Single);
  public
    property DefaultInterface: IDrive read GetDefaultInterface;
  published
    property MotorPulleySize: Integer read Get_MotorPulleySize write Set_MotorPulleySize;
    property FanPulleySize: Integer read Get_FanPulleySize write Set_FanPulleySize;
    property BeltLength: Integer read Get_BeltLength write Set_BeltLength;
    property NumberBelts: Integer read Get_NumberBelts write Set_NumberBelts;
    property OperatingHoursL10: Single read Get_OperatingHoursL10 write Set_OperatingHoursL10;
    property ActualCentres: Single read Get_ActualCentres write Set_ActualCentres;
    property RequiredSpeedRatio: Single read Get_RequiredSpeedRatio write Set_RequiredSpeedRatio;
    property ActualSpeedRatio: Single read Get_ActualSpeedRatio write Set_ActualSpeedRatio;
    property StartingTorque: Single read Get_StartingTorque write Set_StartingTorque;
    property CorrectedBaseLength: Single read Get_CorrectedBaseLength write Set_CorrectedBaseLength;
    property ActualBaseLength: Single read Get_ActualBaseLength write Set_ActualBaseLength;
    property MotorPoles: Integer read Get_MotorPoles write Set_MotorPoles;
    property ResultsLoop: Integer read Get_ResultsLoop write Set_ResultsLoop;
    property Deviation: Single read Get_Deviation write Set_Deviation;
    property FanSpeed: Single read Get_FanSpeed write Set_FanSpeed;
    property DeBugString: WideString read Get_DeBugString write Set_DeBugString;
    property FanBush: Integer read Get_FanBush write Set_FanBush;
    property MotorBush: Integer read Get_MotorBush write Set_MotorBush;
    property Actual100Deflection: Single read Get_Actual100Deflection write Set_Actual100Deflection;
    property ActualFanSpeed: Integer read Get_ActualFanSpeed write Set_ActualFanSpeed;
    property AdditionalPower: Single read Get_AdditionalPower write Set_AdditionalPower;
    property AngularAcceleration: Single read Get_AngularAcceleration write Set_AngularAcceleration;
    property AngularVelocity: Single read Get_AngularVelocity write Set_AngularVelocity;
    property ArcOfContact: Single read Get_ArcOfContact write Set_ArcOfContact;
    property BeltDeflection: Single read Get_BeltDeflection write Set_BeltDeflection;
    property BeltPower: Single read Get_BeltPower write Set_BeltPower;
    property BeltSpeed: Single read Get_BeltSpeed write Set_BeltSpeed;
    property FanPulleyWeight: Single read Get_FanPulleyWeight write Set_FanPulleyWeight;
    property Force: Single read Get_Force write Set_Force;
    property JFanPulley: Single read Get_JFanPulley write Set_JFanPulley;
    property JMotorPulley: Single read Get_JMotorPulley write Set_JMotorPulley;
    property JTotal: Single read Get_JTotal write Set_JTotal;
    property LengthFactor: Single read Get_LengthFactor write Set_LengthFactor;
    property Max100Deflection: Single read Get_Max100Deflection write Set_Max100Deflection;
    property MaxBeltDeflection: Single read Get_MaxBeltDeflection write Set_MaxBeltDeflection;
    property MaxStaticTension: Single read Get_MaxStaticTension write Set_MaxStaticTension;
    property FanPulleyDimW: Integer read Get_FanPulleyDimW write Set_FanPulleyDimW;
    property MotorPulleyDimW: Integer read Get_MotorPulleyDimW write Set_MotorPulleyDimW;
    property MotorPulleyWeight: Single read Get_MotorPulleyWeight write Set_MotorPulleyWeight;
    property RatedPower: Single read Get_RatedPower write Set_RatedPower;
    property TheoBeltLength: Integer read Get_TheoBeltLength write Set_TheoBeltLength;
    property StaticTension: Single read Get_StaticTension write Set_StaticTension;
    property TheoCentres: Single read Get_TheoCentres write Set_TheoCentres;
    property TheoNumberBelts: Single read Get_TheoNumberBelts write Set_TheoNumberBelts;
    property OperatingHoursL50: Single read Get_OperatingHoursL50 write Set_OperatingHoursL50;
    property PulleyType: WideString read Get_PulleyType write Set_PulleyType;
    property MotorFrame: WideString read Get_MotorFrame write Set_MotorFrame;
    property MotorRating: Single read Get_MotorRating write Set_MotorRating;
    property MotorSpeed: Integer read Get_MotorSpeed write Set_MotorSpeed;
    property MotorFLC: Single read Get_MotorFLC write Set_MotorFLC;
    property MotorSTC: Single read Get_MotorSTC write Set_MotorSTC;
    property MotorSize: Integer read Get_MotorSize write Set_MotorSize;
    property MotorShaft: Integer read Get_MotorShaft write Set_MotorShaft;
    property MotorKey: WideString read Get_MotorKey write Set_MotorKey;
    property MotorWeight: Single read Get_MotorWeight write Set_MotorWeight;
    property MotorDimEM: Integer read Get_MotorDimEM write Set_MotorDimEM;
    property MotorDimCM: Integer read Get_MotorDimCM write Set_MotorDimCM;
    property MotorDimBM: Integer read Get_MotorDimBM write Set_MotorDimBM;
    property MotorDimHM: Integer read Get_MotorDimHM write Set_MotorDimHM;
    property STMotor: Single read Get_STMotor write Set_STMotor;
    property FanWidthStr: WideString read Get_FanWidthStr write Set_FanWidthStr;
    property FanHeightStr: WideString read Get_FanHeightStr write Set_FanHeightStr;
    property JMotor: Single read Get_JMotor write Set_JMotor;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoDrives provides a Create and CreateRemote method to          
// create instances of the default interface IDrives exposed by              
// the CoClass Drives. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDrives = class
    class function Create: IDrives;
    class function CreateRemote(const MachineName: string): IDrives;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TDrives
// Help String      : Drives Object
// Default Interface: IDrives
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TDrivesProperties= class;
{$ENDIF}
  TDrives = class(TOleServer)
  private
    FIntf:        IDrives;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TDrivesProperties;
    function      GetServerProperties: TDrivesProperties;
{$ENDIF}
    function      GetDefaultInterface: IDrives;
  protected
    procedure InitServerData; override;
    function Get_Count: Integer;
    function Get_ActiveDrive: IDrive;
    procedure Set_ActiveDrive(const Value: IDrive);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IDrives);
    procedure Disconnect; override;
    function Add(const Drive: IDrive): Integer;
    procedure Remove(Index: Integer);
    function Items(Index: Integer): IDrive;
    function SelectDrives(const Fan: IFan; const DriveInfo: IDriveInfo): Integer;
    procedure Clear;
    property DefaultInterface: IDrives read GetDefaultInterface;
    property Count: Integer read Get_Count;
    property ActiveDrive: IDrive read Get_ActiveDrive write Set_ActiveDrive;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TDrivesProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TDrives
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TDrivesProperties = class(TPersistent)
  private
    FServer:    TDrives;
    function    GetDefaultInterface: IDrives;
    constructor Create(AServer: TDrives);
  protected
    function Get_Count: Integer;
    function Get_ActiveDrive: IDrive;
    procedure Set_ActiveDrive(const Value: IDrive);
  public
    property DefaultInterface: IDrives read GetDefaultInterface;
  published
    property ActiveDrive: IDrive read Get_ActiveDrive write Set_ActiveDrive;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoDriveInfo provides a Create and CreateRemote method to          
// create instances of the default interface IDriveInfo exposed by              
// the CoClass DriveInfo. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDriveInfo = class
    class function Create: IDriveInfo;
    class function CreateRemote(const MachineName: string): IDriveInfo;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TDriveInfo
// Help String      : DriveInfo Object
// Default Interface: IDriveInfo
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TDriveInfoProperties= class;
{$ENDIF}
  TDriveInfo = class(TOleServer)
  private
    FIntf:        IDriveInfo;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TDriveInfoProperties;
    function      GetServerProperties: TDriveInfoProperties;
{$ENDIF}
    function      GetDefaultInterface: IDriveInfo;
  protected
    procedure InitServerData; override;
    function Get_Distance: Integer;
    procedure Set_Distance(Value: Integer);
    function Get_SPZ: WordBool;
    procedure Set_SPZ(Value: WordBool);
    function Get_BearingLoad: Integer;
    procedure Set_BearingLoad(Value: Integer);
    function Get_StartTime: Integer;
    procedure Set_StartTime(Value: Integer);
    function Get_SPA: WordBool;
    procedure Set_SPA(Value: WordBool);
    function Get_SPB: WordBool;
    procedure Set_SPB(Value: WordBool);
    function Get_SPC: WordBool;
    procedure Set_SPC(Value: WordBool);
    function Get_Pole2: WordBool;
    procedure Set_Pole2(Value: WordBool);
    function Get_Pole4: WordBool;
    procedure Set_Pole4(Value: WordBool);
    function Get_Pole6: WordBool;
    procedure Set_Pole6(Value: WordBool);
    function Get_Pole8: WordBool;
    procedure Set_Pole8(Value: WordBool);
    function Get_L50_Life: Integer;
    procedure Set_L50_Life(Value: Integer);
    function Get_L10_Life: Integer;
    procedure Set_L10_Life(Value: Integer);
    function Get_RecordDirectory: WideString;
    procedure Set_RecordDirectory(const Value: WideString);
    function Get_FanHanding: FanHanding;
    procedure Set_FanHanding(Value: FanHanding);
    function Get_MotorPosition: MotorPosition;
    procedure Set_MotorPosition(Value: MotorPosition);
    function Get_FanArrangement: FanArrangement;
    procedure Set_FanArrangement(Value: FanArrangement);
    function Get_Debug: WordBool;
    procedure Set_Debug(Value: WordBool);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IDriveInfo);
    procedure Disconnect; override;
    property DefaultInterface: IDriveInfo read GetDefaultInterface;
    property Distance: Integer read Get_Distance write Set_Distance;
    property SPZ: WordBool read Get_SPZ write Set_SPZ;
    property BearingLoad: Integer read Get_BearingLoad write Set_BearingLoad;
    property StartTime: Integer read Get_StartTime write Set_StartTime;
    property SPA: WordBool read Get_SPA write Set_SPA;
    property SPB: WordBool read Get_SPB write Set_SPB;
    property SPC: WordBool read Get_SPC write Set_SPC;
    property Pole2: WordBool read Get_Pole2 write Set_Pole2;
    property Pole4: WordBool read Get_Pole4 write Set_Pole4;
    property Pole6: WordBool read Get_Pole6 write Set_Pole6;
    property Pole8: WordBool read Get_Pole8 write Set_Pole8;
    property L50_Life: Integer read Get_L50_Life write Set_L50_Life;
    property L10_Life: Integer read Get_L10_Life write Set_L10_Life;
    property RecordDirectory: WideString read Get_RecordDirectory write Set_RecordDirectory;
    property FanHanding: FanHanding read Get_FanHanding write Set_FanHanding;
    property MotorPosition: MotorPosition read Get_MotorPosition write Set_MotorPosition;
    property FanArrangement: FanArrangement read Get_FanArrangement write Set_FanArrangement;
    property Debug: WordBool read Get_Debug write Set_Debug;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TDriveInfoProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TDriveInfo
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TDriveInfoProperties = class(TPersistent)
  private
    FServer:    TDriveInfo;
    function    GetDefaultInterface: IDriveInfo;
    constructor Create(AServer: TDriveInfo);
  protected
    function Get_Distance: Integer;
    procedure Set_Distance(Value: Integer);
    function Get_SPZ: WordBool;
    procedure Set_SPZ(Value: WordBool);
    function Get_BearingLoad: Integer;
    procedure Set_BearingLoad(Value: Integer);
    function Get_StartTime: Integer;
    procedure Set_StartTime(Value: Integer);
    function Get_SPA: WordBool;
    procedure Set_SPA(Value: WordBool);
    function Get_SPB: WordBool;
    procedure Set_SPB(Value: WordBool);
    function Get_SPC: WordBool;
    procedure Set_SPC(Value: WordBool);
    function Get_Pole2: WordBool;
    procedure Set_Pole2(Value: WordBool);
    function Get_Pole4: WordBool;
    procedure Set_Pole4(Value: WordBool);
    function Get_Pole6: WordBool;
    procedure Set_Pole6(Value: WordBool);
    function Get_Pole8: WordBool;
    procedure Set_Pole8(Value: WordBool);
    function Get_L50_Life: Integer;
    procedure Set_L50_Life(Value: Integer);
    function Get_L10_Life: Integer;
    procedure Set_L10_Life(Value: Integer);
    function Get_RecordDirectory: WideString;
    procedure Set_RecordDirectory(const Value: WideString);
    function Get_FanHanding: FanHanding;
    procedure Set_FanHanding(Value: FanHanding);
    function Get_MotorPosition: MotorPosition;
    procedure Set_MotorPosition(Value: MotorPosition);
    function Get_FanArrangement: FanArrangement;
    procedure Set_FanArrangement(Value: FanArrangement);
    function Get_Debug: WordBool;
    procedure Set_Debug(Value: WordBool);
  public
    property DefaultInterface: IDriveInfo read GetDefaultInterface;
  published
    property Distance: Integer read Get_Distance write Set_Distance;
    property SPZ: WordBool read Get_SPZ write Set_SPZ;
    property BearingLoad: Integer read Get_BearingLoad write Set_BearingLoad;
    property StartTime: Integer read Get_StartTime write Set_StartTime;
    property SPA: WordBool read Get_SPA write Set_SPA;
    property SPB: WordBool read Get_SPB write Set_SPB;
    property SPC: WordBool read Get_SPC write Set_SPC;
    property Pole2: WordBool read Get_Pole2 write Set_Pole2;
    property Pole4: WordBool read Get_Pole4 write Set_Pole4;
    property Pole6: WordBool read Get_Pole6 write Set_Pole6;
    property Pole8: WordBool read Get_Pole8 write Set_Pole8;
    property L50_Life: Integer read Get_L50_Life write Set_L50_Life;
    property L10_Life: Integer read Get_L10_Life write Set_L10_Life;
    property RecordDirectory: WideString read Get_RecordDirectory write Set_RecordDirectory;
    property FanHanding: FanHanding read Get_FanHanding write Set_FanHanding;
    property MotorPosition: MotorPosition read Get_MotorPosition write Set_MotorPosition;
    property FanArrangement: FanArrangement read Get_FanArrangement write Set_FanArrangement;
    property Debug: WordBool read Get_Debug write Set_Debug;
  end;
{$ENDIF}


procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

  dtlOcxPage = 'ActiveX';

implementation

uses ComObj;

class function CoFans.Create: IFans;
begin
  Result := CreateComObject(CLASS_Fans) as IFans;
end;

class function CoFans.CreateRemote(const MachineName: string): IFans;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Fans) as IFans;
end;

class function CoCentSelect.Create: ICentSelect;
begin
  Result := CreateComObject(CLASS_CentSelect) as ICentSelect;
end;

class function CoCentSelect.CreateRemote(const MachineName: string): ICentSelect;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CentSelect) as ICentSelect;
end;

procedure TCentSelect.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{72003764-90DF-45CD-80F4-6EC01125CE19}';
    IntfIID:   '{07CC2C23-BF0A-4BC4-BD3E-331C7F3ACC13}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCentSelect.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ICentSelect;
  end;
end;

procedure TCentSelect.ConnectTo(svrIntf: ICentSelect);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCentSelect.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCentSelect.GetDefaultInterface: ICentSelect;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TCentSelect.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TCentSelectProperties.Create(Self);
{$ENDIF}
end;

destructor TCentSelect.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TCentSelect.GetServerProperties: TCentSelectProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TCentSelect.Select(var info: SelectInfo): IDispatch;
begin
  Result := DefaultInterface.Select(info);
end;

function TCentSelect.IsValid(var info: SelectInfo): WordBool;
begin
  Result := DefaultInterface.IsValid(info);
end;

function TCentSelect.About: WideString;
begin
  Result := DefaultInterface.About;
end;

function TCentSelect.CurvePoints(const Fan: Fan; Speed: Integer): ICurve;
begin
  Result := DefaultInterface.CurvePoints(Fan, Speed);
end;

function TCentSelect.SoundSpectrum(var FanItem: Fan; Speed: Integer): IDispatch;
begin
  Result := DefaultInterface.SoundSpectrum(FanItem, Speed);
end;

function TCentSelect.SoundSpectrumEx(var FanItem: Fan; Speed: Integer; Debug: WordBool): IDispatch;
begin
  Result := DefaultInterface.SoundSpectrumEx(FanItem, Speed, Debug);
end;

function TCentSelect.SelectEx(var info: SelectInfo; kfactor: Single): IDispatch;
begin
  Result := DefaultInterface.SelectEx(info, kfactor);
end;

procedure TCentSelect.GenerateChart(const Fan: Fan; const FileName: WideString; Width: Integer; 
                                    Height: Integer; ChartOutput: eChartOutput);
begin
  DefaultInterface.GenerateChart(Fan, FileName, Width, Height, ChartOutput);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TCentSelectProperties.Create(AServer: TCentSelect);
begin
  inherited Create;
  FServer := AServer;
end;

function TCentSelectProperties.GetDefaultInterface: ICentSelect;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoFan.Create: IFan;
begin
  Result := CreateComObject(CLASS_Fan) as IFan;
end;

class function CoFan.CreateRemote(const MachineName: string): IFan;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Fan) as IFan;
end;

class function CoCurve.Create: ICurve;
begin
  Result := CreateComObject(CLASS_Curve) as ICurve;
end;

class function CoCurve.CreateRemote(const MachineName: string): ICurve;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Curve) as ICurve;
end;

class function CoSpectrum.Create: ISpectrum;
begin
  Result := CreateComObject(CLASS_Spectrum) as ISpectrum;
end;

class function CoSpectrum.CreateRemote(const MachineName: string): ISpectrum;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Spectrum) as ISpectrum;
end;

class function CoDrive.Create: IDrive;
begin
  Result := CreateComObject(CLASS_Drive) as IDrive;
end;

class function CoDrive.CreateRemote(const MachineName: string): IDrive;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Drive) as IDrive;
end;

procedure TDrive.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{8984DA06-1711-4019-86CA-46E63E1717F4}';
    IntfIID:   '{EF41C783-AD89-45DE-B21E-5B36E2CB84D7}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TDrive.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IDrive;
  end;
end;

procedure TDrive.ConnectTo(svrIntf: IDrive);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TDrive.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TDrive.GetDefaultInterface: IDrive;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TDrive.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TDriveProperties.Create(Self);
{$ENDIF}
end;

destructor TDrive.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TDrive.GetServerProperties: TDriveProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TDrive.Get_MotorPulleySize: Integer;
begin
    Result := DefaultInterface.MotorPulleySize;
end;

procedure TDrive.Set_MotorPulleySize(Value: Integer);
begin
  DefaultInterface.Set_MotorPulleySize(Value);
end;

function TDrive.Get_FanPulleySize: Integer;
begin
    Result := DefaultInterface.FanPulleySize;
end;

procedure TDrive.Set_FanPulleySize(Value: Integer);
begin
  DefaultInterface.Set_FanPulleySize(Value);
end;

function TDrive.Get_BeltLength: Integer;
begin
    Result := DefaultInterface.BeltLength;
end;

procedure TDrive.Set_BeltLength(Value: Integer);
begin
  DefaultInterface.Set_BeltLength(Value);
end;

function TDrive.Get_NumberBelts: Integer;
begin
    Result := DefaultInterface.NumberBelts;
end;

procedure TDrive.Set_NumberBelts(Value: Integer);
begin
  DefaultInterface.Set_NumberBelts(Value);
end;

function TDrive.Get_OperatingHoursL10: Single;
begin
    Result := DefaultInterface.OperatingHoursL10;
end;

procedure TDrive.Set_OperatingHoursL10(Value: Single);
begin
  DefaultInterface.Set_OperatingHoursL10(Value);
end;

function TDrive.Get_ActualCentres: Single;
begin
    Result := DefaultInterface.ActualCentres;
end;

procedure TDrive.Set_ActualCentres(Value: Single);
begin
  DefaultInterface.Set_ActualCentres(Value);
end;

function TDrive.Get_RequiredSpeedRatio: Single;
begin
    Result := DefaultInterface.RequiredSpeedRatio;
end;

procedure TDrive.Set_RequiredSpeedRatio(Value: Single);
begin
  DefaultInterface.Set_RequiredSpeedRatio(Value);
end;

function TDrive.Get_ActualSpeedRatio: Single;
begin
    Result := DefaultInterface.ActualSpeedRatio;
end;

procedure TDrive.Set_ActualSpeedRatio(Value: Single);
begin
  DefaultInterface.Set_ActualSpeedRatio(Value);
end;

function TDrive.Get_StartingTorque: Single;
begin
    Result := DefaultInterface.StartingTorque;
end;

procedure TDrive.Set_StartingTorque(Value: Single);
begin
  DefaultInterface.Set_StartingTorque(Value);
end;

function TDrive.Get_CorrectedBaseLength: Single;
begin
    Result := DefaultInterface.CorrectedBaseLength;
end;

procedure TDrive.Set_CorrectedBaseLength(Value: Single);
begin
  DefaultInterface.Set_CorrectedBaseLength(Value);
end;

function TDrive.Get_ActualBaseLength: Single;
begin
    Result := DefaultInterface.ActualBaseLength;
end;

procedure TDrive.Set_ActualBaseLength(Value: Single);
begin
  DefaultInterface.Set_ActualBaseLength(Value);
end;

function TDrive.Get_MotorPoles: Integer;
begin
    Result := DefaultInterface.MotorPoles;
end;

procedure TDrive.Set_MotorPoles(Value: Integer);
begin
  DefaultInterface.Set_MotorPoles(Value);
end;

function TDrive.Get_ResultsLoop: Integer;
begin
    Result := DefaultInterface.ResultsLoop;
end;

procedure TDrive.Set_ResultsLoop(Value: Integer);
begin
  DefaultInterface.Set_ResultsLoop(Value);
end;

function TDrive.Get_Deviation: Single;
begin
    Result := DefaultInterface.Deviation;
end;

procedure TDrive.Set_Deviation(Value: Single);
begin
  DefaultInterface.Set_Deviation(Value);
end;

function TDrive.Get_FanSpeed: Single;
begin
    Result := DefaultInterface.FanSpeed;
end;

procedure TDrive.Set_FanSpeed(Value: Single);
begin
  DefaultInterface.Set_FanSpeed(Value);
end;

function TDrive.Get_DeBugString: WideString;
begin
    Result := DefaultInterface.DeBugString;
end;

procedure TDrive.Set_DeBugString(const Value: WideString);
  { Warning: The property DeBugString has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DeBugString := Value;
end;

function TDrive.Get_FanBush: Integer;
begin
    Result := DefaultInterface.FanBush;
end;

procedure TDrive.Set_FanBush(Value: Integer);
begin
  DefaultInterface.Set_FanBush(Value);
end;

function TDrive.Get_MotorBush: Integer;
begin
    Result := DefaultInterface.MotorBush;
end;

procedure TDrive.Set_MotorBush(Value: Integer);
begin
  DefaultInterface.Set_MotorBush(Value);
end;

function TDrive.Get_Actual100Deflection: Single;
begin
    Result := DefaultInterface.Actual100Deflection;
end;

procedure TDrive.Set_Actual100Deflection(Value: Single);
begin
  DefaultInterface.Set_Actual100Deflection(Value);
end;

function TDrive.Get_ActualFanSpeed: Integer;
begin
    Result := DefaultInterface.ActualFanSpeed;
end;

procedure TDrive.Set_ActualFanSpeed(Value: Integer);
begin
  DefaultInterface.Set_ActualFanSpeed(Value);
end;

function TDrive.Get_AdditionalPower: Single;
begin
    Result := DefaultInterface.AdditionalPower;
end;

procedure TDrive.Set_AdditionalPower(Value: Single);
begin
  DefaultInterface.Set_AdditionalPower(Value);
end;

function TDrive.Get_AngularAcceleration: Single;
begin
    Result := DefaultInterface.AngularAcceleration;
end;

procedure TDrive.Set_AngularAcceleration(Value: Single);
begin
  DefaultInterface.Set_AngularAcceleration(Value);
end;

function TDrive.Get_AngularVelocity: Single;
begin
    Result := DefaultInterface.AngularVelocity;
end;

procedure TDrive.Set_AngularVelocity(Value: Single);
begin
  DefaultInterface.Set_AngularVelocity(Value);
end;

function TDrive.Get_ArcOfContact: Single;
begin
    Result := DefaultInterface.ArcOfContact;
end;

procedure TDrive.Set_ArcOfContact(Value: Single);
begin
  DefaultInterface.Set_ArcOfContact(Value);
end;

function TDrive.Get_BeltDeflection: Single;
begin
    Result := DefaultInterface.BeltDeflection;
end;

procedure TDrive.Set_BeltDeflection(Value: Single);
begin
  DefaultInterface.Set_BeltDeflection(Value);
end;

function TDrive.Get_BeltPower: Single;
begin
    Result := DefaultInterface.BeltPower;
end;

procedure TDrive.Set_BeltPower(Value: Single);
begin
  DefaultInterface.Set_BeltPower(Value);
end;

function TDrive.Get_BeltSpeed: Single;
begin
    Result := DefaultInterface.BeltSpeed;
end;

procedure TDrive.Set_BeltSpeed(Value: Single);
begin
  DefaultInterface.Set_BeltSpeed(Value);
end;

function TDrive.Get_FanPulleyWeight: Single;
begin
    Result := DefaultInterface.FanPulleyWeight;
end;

procedure TDrive.Set_FanPulleyWeight(Value: Single);
begin
  DefaultInterface.Set_FanPulleyWeight(Value);
end;

function TDrive.Get_Force: Single;
begin
    Result := DefaultInterface.Force;
end;

procedure TDrive.Set_Force(Value: Single);
begin
  DefaultInterface.Set_Force(Value);
end;

function TDrive.Get_JFanPulley: Single;
begin
    Result := DefaultInterface.JFanPulley;
end;

procedure TDrive.Set_JFanPulley(Value: Single);
begin
  DefaultInterface.Set_JFanPulley(Value);
end;

function TDrive.Get_JMotorPulley: Single;
begin
    Result := DefaultInterface.JMotorPulley;
end;

procedure TDrive.Set_JMotorPulley(Value: Single);
begin
  DefaultInterface.Set_JMotorPulley(Value);
end;

function TDrive.Get_JTotal: Single;
begin
    Result := DefaultInterface.JTotal;
end;

procedure TDrive.Set_JTotal(Value: Single);
begin
  DefaultInterface.Set_JTotal(Value);
end;

function TDrive.Get_LengthFactor: Single;
begin
    Result := DefaultInterface.LengthFactor;
end;

procedure TDrive.Set_LengthFactor(Value: Single);
begin
  DefaultInterface.Set_LengthFactor(Value);
end;

function TDrive.Get_Max100Deflection: Single;
begin
    Result := DefaultInterface.Max100Deflection;
end;

procedure TDrive.Set_Max100Deflection(Value: Single);
begin
  DefaultInterface.Set_Max100Deflection(Value);
end;

function TDrive.Get_MaxBeltDeflection: Single;
begin
    Result := DefaultInterface.MaxBeltDeflection;
end;

procedure TDrive.Set_MaxBeltDeflection(Value: Single);
begin
  DefaultInterface.Set_MaxBeltDeflection(Value);
end;

function TDrive.Get_MaxStaticTension: Single;
begin
    Result := DefaultInterface.MaxStaticTension;
end;

procedure TDrive.Set_MaxStaticTension(Value: Single);
begin
  DefaultInterface.Set_MaxStaticTension(Value);
end;

function TDrive.Get_FanPulleyDimW: Integer;
begin
    Result := DefaultInterface.FanPulleyDimW;
end;

procedure TDrive.Set_FanPulleyDimW(Value: Integer);
begin
  DefaultInterface.Set_FanPulleyDimW(Value);
end;

function TDrive.Get_MotorPulleyDimW: Integer;
begin
    Result := DefaultInterface.MotorPulleyDimW;
end;

procedure TDrive.Set_MotorPulleyDimW(Value: Integer);
begin
  DefaultInterface.Set_MotorPulleyDimW(Value);
end;

function TDrive.Get_MotorPulleyWeight: Single;
begin
    Result := DefaultInterface.MotorPulleyWeight;
end;

procedure TDrive.Set_MotorPulleyWeight(Value: Single);
begin
  DefaultInterface.Set_MotorPulleyWeight(Value);
end;

function TDrive.Get_RatedPower: Single;
begin
    Result := DefaultInterface.RatedPower;
end;

procedure TDrive.Set_RatedPower(Value: Single);
begin
  DefaultInterface.Set_RatedPower(Value);
end;

function TDrive.Get_TheoBeltLength: Integer;
begin
    Result := DefaultInterface.TheoBeltLength;
end;

procedure TDrive.Set_TheoBeltLength(Value: Integer);
begin
  DefaultInterface.Set_TheoBeltLength(Value);
end;

function TDrive.Get_StaticTension: Single;
begin
    Result := DefaultInterface.StaticTension;
end;

procedure TDrive.Set_StaticTension(Value: Single);
begin
  DefaultInterface.Set_StaticTension(Value);
end;

function TDrive.Get_TheoCentres: Single;
begin
    Result := DefaultInterface.TheoCentres;
end;

procedure TDrive.Set_TheoCentres(Value: Single);
begin
  DefaultInterface.Set_TheoCentres(Value);
end;

function TDrive.Get_TheoNumberBelts: Single;
begin
    Result := DefaultInterface.TheoNumberBelts;
end;

procedure TDrive.Set_TheoNumberBelts(Value: Single);
begin
  DefaultInterface.Set_TheoNumberBelts(Value);
end;

function TDrive.Get_OperatingHoursL50: Single;
begin
    Result := DefaultInterface.OperatingHoursL50;
end;

procedure TDrive.Set_OperatingHoursL50(Value: Single);
begin
  DefaultInterface.Set_OperatingHoursL50(Value);
end;

function TDrive.Get_PulleyType: WideString;
begin
    Result := DefaultInterface.PulleyType;
end;

procedure TDrive.Set_PulleyType(const Value: WideString);
  { Warning: The property PulleyType has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PulleyType := Value;
end;

function TDrive.Get_MotorFrame: WideString;
begin
    Result := DefaultInterface.MotorFrame;
end;

procedure TDrive.Set_MotorFrame(const Value: WideString);
  { Warning: The property MotorFrame has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MotorFrame := Value;
end;

function TDrive.Get_MotorRating: Single;
begin
    Result := DefaultInterface.MotorRating;
end;

procedure TDrive.Set_MotorRating(Value: Single);
begin
  DefaultInterface.Set_MotorRating(Value);
end;

function TDrive.Get_MotorSpeed: Integer;
begin
    Result := DefaultInterface.MotorSpeed;
end;

procedure TDrive.Set_MotorSpeed(Value: Integer);
begin
  DefaultInterface.Set_MotorSpeed(Value);
end;

function TDrive.Get_MotorFLC: Single;
begin
    Result := DefaultInterface.MotorFLC;
end;

procedure TDrive.Set_MotorFLC(Value: Single);
begin
  DefaultInterface.Set_MotorFLC(Value);
end;

function TDrive.Get_MotorSTC: Single;
begin
    Result := DefaultInterface.MotorSTC;
end;

procedure TDrive.Set_MotorSTC(Value: Single);
begin
  DefaultInterface.Set_MotorSTC(Value);
end;

function TDrive.Get_MotorSize: Integer;
begin
    Result := DefaultInterface.MotorSize;
end;

procedure TDrive.Set_MotorSize(Value: Integer);
begin
  DefaultInterface.Set_MotorSize(Value);
end;

function TDrive.Get_MotorShaft: Integer;
begin
    Result := DefaultInterface.MotorShaft;
end;

procedure TDrive.Set_MotorShaft(Value: Integer);
begin
  DefaultInterface.Set_MotorShaft(Value);
end;

function TDrive.Get_MotorKey: WideString;
begin
    Result := DefaultInterface.MotorKey;
end;

procedure TDrive.Set_MotorKey(const Value: WideString);
  { Warning: The property MotorKey has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MotorKey := Value;
end;

function TDrive.Get_MotorWeight: Single;
begin
    Result := DefaultInterface.MotorWeight;
end;

procedure TDrive.Set_MotorWeight(Value: Single);
begin
  DefaultInterface.Set_MotorWeight(Value);
end;

function TDrive.Get_MotorDimEM: Integer;
begin
    Result := DefaultInterface.MotorDimEM;
end;

procedure TDrive.Set_MotorDimEM(Value: Integer);
begin
  DefaultInterface.Set_MotorDimEM(Value);
end;

function TDrive.Get_MotorDimCM: Integer;
begin
    Result := DefaultInterface.MotorDimCM;
end;

procedure TDrive.Set_MotorDimCM(Value: Integer);
begin
  DefaultInterface.Set_MotorDimCM(Value);
end;

function TDrive.Get_MotorDimBM: Integer;
begin
    Result := DefaultInterface.MotorDimBM;
end;

procedure TDrive.Set_MotorDimBM(Value: Integer);
begin
  DefaultInterface.Set_MotorDimBM(Value);
end;

function TDrive.Get_MotorDimHM: Integer;
begin
    Result := DefaultInterface.MotorDimHM;
end;

procedure TDrive.Set_MotorDimHM(Value: Integer);
begin
  DefaultInterface.Set_MotorDimHM(Value);
end;

function TDrive.Get_STMotor: Single;
begin
    Result := DefaultInterface.STMotor;
end;

procedure TDrive.Set_STMotor(Value: Single);
begin
  DefaultInterface.Set_STMotor(Value);
end;

function TDrive.Get_FanWidthStr: WideString;
begin
    Result := DefaultInterface.FanWidthStr;
end;

procedure TDrive.Set_FanWidthStr(const Value: WideString);
  { Warning: The property FanWidthStr has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FanWidthStr := Value;
end;

function TDrive.Get_FanHeightStr: WideString;
begin
    Result := DefaultInterface.FanHeightStr;
end;

procedure TDrive.Set_FanHeightStr(const Value: WideString);
  { Warning: The property FanHeightStr has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FanHeightStr := Value;
end;

function TDrive.Get_JMotor: Single;
begin
    Result := DefaultInterface.JMotor;
end;

procedure TDrive.Set_JMotor(Value: Single);
begin
  DefaultInterface.Set_JMotor(Value);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TDriveProperties.Create(AServer: TDrive);
begin
  inherited Create;
  FServer := AServer;
end;

function TDriveProperties.GetDefaultInterface: IDrive;
begin
  Result := FServer.DefaultInterface;
end;

function TDriveProperties.Get_MotorPulleySize: Integer;
begin
    Result := DefaultInterface.MotorPulleySize;
end;

procedure TDriveProperties.Set_MotorPulleySize(Value: Integer);
begin
  DefaultInterface.Set_MotorPulleySize(Value);
end;

function TDriveProperties.Get_FanPulleySize: Integer;
begin
    Result := DefaultInterface.FanPulleySize;
end;

procedure TDriveProperties.Set_FanPulleySize(Value: Integer);
begin
  DefaultInterface.Set_FanPulleySize(Value);
end;

function TDriveProperties.Get_BeltLength: Integer;
begin
    Result := DefaultInterface.BeltLength;
end;

procedure TDriveProperties.Set_BeltLength(Value: Integer);
begin
  DefaultInterface.Set_BeltLength(Value);
end;

function TDriveProperties.Get_NumberBelts: Integer;
begin
    Result := DefaultInterface.NumberBelts;
end;

procedure TDriveProperties.Set_NumberBelts(Value: Integer);
begin
  DefaultInterface.Set_NumberBelts(Value);
end;

function TDriveProperties.Get_OperatingHoursL10: Single;
begin
    Result := DefaultInterface.OperatingHoursL10;
end;

procedure TDriveProperties.Set_OperatingHoursL10(Value: Single);
begin
  DefaultInterface.Set_OperatingHoursL10(Value);
end;

function TDriveProperties.Get_ActualCentres: Single;
begin
    Result := DefaultInterface.ActualCentres;
end;

procedure TDriveProperties.Set_ActualCentres(Value: Single);
begin
  DefaultInterface.Set_ActualCentres(Value);
end;

function TDriveProperties.Get_RequiredSpeedRatio: Single;
begin
    Result := DefaultInterface.RequiredSpeedRatio;
end;

procedure TDriveProperties.Set_RequiredSpeedRatio(Value: Single);
begin
  DefaultInterface.Set_RequiredSpeedRatio(Value);
end;

function TDriveProperties.Get_ActualSpeedRatio: Single;
begin
    Result := DefaultInterface.ActualSpeedRatio;
end;

procedure TDriveProperties.Set_ActualSpeedRatio(Value: Single);
begin
  DefaultInterface.Set_ActualSpeedRatio(Value);
end;

function TDriveProperties.Get_StartingTorque: Single;
begin
    Result := DefaultInterface.StartingTorque;
end;

procedure TDriveProperties.Set_StartingTorque(Value: Single);
begin
  DefaultInterface.Set_StartingTorque(Value);
end;

function TDriveProperties.Get_CorrectedBaseLength: Single;
begin
    Result := DefaultInterface.CorrectedBaseLength;
end;

procedure TDriveProperties.Set_CorrectedBaseLength(Value: Single);
begin
  DefaultInterface.Set_CorrectedBaseLength(Value);
end;

function TDriveProperties.Get_ActualBaseLength: Single;
begin
    Result := DefaultInterface.ActualBaseLength;
end;

procedure TDriveProperties.Set_ActualBaseLength(Value: Single);
begin
  DefaultInterface.Set_ActualBaseLength(Value);
end;

function TDriveProperties.Get_MotorPoles: Integer;
begin
    Result := DefaultInterface.MotorPoles;
end;

procedure TDriveProperties.Set_MotorPoles(Value: Integer);
begin
  DefaultInterface.Set_MotorPoles(Value);
end;

function TDriveProperties.Get_ResultsLoop: Integer;
begin
    Result := DefaultInterface.ResultsLoop;
end;

procedure TDriveProperties.Set_ResultsLoop(Value: Integer);
begin
  DefaultInterface.Set_ResultsLoop(Value);
end;

function TDriveProperties.Get_Deviation: Single;
begin
    Result := DefaultInterface.Deviation;
end;

procedure TDriveProperties.Set_Deviation(Value: Single);
begin
  DefaultInterface.Set_Deviation(Value);
end;

function TDriveProperties.Get_FanSpeed: Single;
begin
    Result := DefaultInterface.FanSpeed;
end;

procedure TDriveProperties.Set_FanSpeed(Value: Single);
begin
  DefaultInterface.Set_FanSpeed(Value);
end;

function TDriveProperties.Get_DeBugString: WideString;
begin
    Result := DefaultInterface.DeBugString;
end;

procedure TDriveProperties.Set_DeBugString(const Value: WideString);
  { Warning: The property DeBugString has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DeBugString := Value;
end;

function TDriveProperties.Get_FanBush: Integer;
begin
    Result := DefaultInterface.FanBush;
end;

procedure TDriveProperties.Set_FanBush(Value: Integer);
begin
  DefaultInterface.Set_FanBush(Value);
end;

function TDriveProperties.Get_MotorBush: Integer;
begin
    Result := DefaultInterface.MotorBush;
end;

procedure TDriveProperties.Set_MotorBush(Value: Integer);
begin
  DefaultInterface.Set_MotorBush(Value);
end;

function TDriveProperties.Get_Actual100Deflection: Single;
begin
    Result := DefaultInterface.Actual100Deflection;
end;

procedure TDriveProperties.Set_Actual100Deflection(Value: Single);
begin
  DefaultInterface.Set_Actual100Deflection(Value);
end;

function TDriveProperties.Get_ActualFanSpeed: Integer;
begin
    Result := DefaultInterface.ActualFanSpeed;
end;

procedure TDriveProperties.Set_ActualFanSpeed(Value: Integer);
begin
  DefaultInterface.Set_ActualFanSpeed(Value);
end;

function TDriveProperties.Get_AdditionalPower: Single;
begin
    Result := DefaultInterface.AdditionalPower;
end;

procedure TDriveProperties.Set_AdditionalPower(Value: Single);
begin
  DefaultInterface.Set_AdditionalPower(Value);
end;

function TDriveProperties.Get_AngularAcceleration: Single;
begin
    Result := DefaultInterface.AngularAcceleration;
end;

procedure TDriveProperties.Set_AngularAcceleration(Value: Single);
begin
  DefaultInterface.Set_AngularAcceleration(Value);
end;

function TDriveProperties.Get_AngularVelocity: Single;
begin
    Result := DefaultInterface.AngularVelocity;
end;

procedure TDriveProperties.Set_AngularVelocity(Value: Single);
begin
  DefaultInterface.Set_AngularVelocity(Value);
end;

function TDriveProperties.Get_ArcOfContact: Single;
begin
    Result := DefaultInterface.ArcOfContact;
end;

procedure TDriveProperties.Set_ArcOfContact(Value: Single);
begin
  DefaultInterface.Set_ArcOfContact(Value);
end;

function TDriveProperties.Get_BeltDeflection: Single;
begin
    Result := DefaultInterface.BeltDeflection;
end;

procedure TDriveProperties.Set_BeltDeflection(Value: Single);
begin
  DefaultInterface.Set_BeltDeflection(Value);
end;

function TDriveProperties.Get_BeltPower: Single;
begin
    Result := DefaultInterface.BeltPower;
end;

procedure TDriveProperties.Set_BeltPower(Value: Single);
begin
  DefaultInterface.Set_BeltPower(Value);
end;

function TDriveProperties.Get_BeltSpeed: Single;
begin
    Result := DefaultInterface.BeltSpeed;
end;

procedure TDriveProperties.Set_BeltSpeed(Value: Single);
begin
  DefaultInterface.Set_BeltSpeed(Value);
end;

function TDriveProperties.Get_FanPulleyWeight: Single;
begin
    Result := DefaultInterface.FanPulleyWeight;
end;

procedure TDriveProperties.Set_FanPulleyWeight(Value: Single);
begin
  DefaultInterface.Set_FanPulleyWeight(Value);
end;

function TDriveProperties.Get_Force: Single;
begin
    Result := DefaultInterface.Force;
end;

procedure TDriveProperties.Set_Force(Value: Single);
begin
  DefaultInterface.Set_Force(Value);
end;

function TDriveProperties.Get_JFanPulley: Single;
begin
    Result := DefaultInterface.JFanPulley;
end;

procedure TDriveProperties.Set_JFanPulley(Value: Single);
begin
  DefaultInterface.Set_JFanPulley(Value);
end;

function TDriveProperties.Get_JMotorPulley: Single;
begin
    Result := DefaultInterface.JMotorPulley;
end;

procedure TDriveProperties.Set_JMotorPulley(Value: Single);
begin
  DefaultInterface.Set_JMotorPulley(Value);
end;

function TDriveProperties.Get_JTotal: Single;
begin
    Result := DefaultInterface.JTotal;
end;

procedure TDriveProperties.Set_JTotal(Value: Single);
begin
  DefaultInterface.Set_JTotal(Value);
end;

function TDriveProperties.Get_LengthFactor: Single;
begin
    Result := DefaultInterface.LengthFactor;
end;

procedure TDriveProperties.Set_LengthFactor(Value: Single);
begin
  DefaultInterface.Set_LengthFactor(Value);
end;

function TDriveProperties.Get_Max100Deflection: Single;
begin
    Result := DefaultInterface.Max100Deflection;
end;

procedure TDriveProperties.Set_Max100Deflection(Value: Single);
begin
  DefaultInterface.Set_Max100Deflection(Value);
end;

function TDriveProperties.Get_MaxBeltDeflection: Single;
begin
    Result := DefaultInterface.MaxBeltDeflection;
end;

procedure TDriveProperties.Set_MaxBeltDeflection(Value: Single);
begin
  DefaultInterface.Set_MaxBeltDeflection(Value);
end;

function TDriveProperties.Get_MaxStaticTension: Single;
begin
    Result := DefaultInterface.MaxStaticTension;
end;

procedure TDriveProperties.Set_MaxStaticTension(Value: Single);
begin
  DefaultInterface.Set_MaxStaticTension(Value);
end;

function TDriveProperties.Get_FanPulleyDimW: Integer;
begin
    Result := DefaultInterface.FanPulleyDimW;
end;

procedure TDriveProperties.Set_FanPulleyDimW(Value: Integer);
begin
  DefaultInterface.Set_FanPulleyDimW(Value);
end;

function TDriveProperties.Get_MotorPulleyDimW: Integer;
begin
    Result := DefaultInterface.MotorPulleyDimW;
end;

procedure TDriveProperties.Set_MotorPulleyDimW(Value: Integer);
begin
  DefaultInterface.Set_MotorPulleyDimW(Value);
end;

function TDriveProperties.Get_MotorPulleyWeight: Single;
begin
    Result := DefaultInterface.MotorPulleyWeight;
end;

procedure TDriveProperties.Set_MotorPulleyWeight(Value: Single);
begin
  DefaultInterface.Set_MotorPulleyWeight(Value);
end;

function TDriveProperties.Get_RatedPower: Single;
begin
    Result := DefaultInterface.RatedPower;
end;

procedure TDriveProperties.Set_RatedPower(Value: Single);
begin
  DefaultInterface.Set_RatedPower(Value);
end;

function TDriveProperties.Get_TheoBeltLength: Integer;
begin
    Result := DefaultInterface.TheoBeltLength;
end;

procedure TDriveProperties.Set_TheoBeltLength(Value: Integer);
begin
  DefaultInterface.Set_TheoBeltLength(Value);
end;

function TDriveProperties.Get_StaticTension: Single;
begin
    Result := DefaultInterface.StaticTension;
end;

procedure TDriveProperties.Set_StaticTension(Value: Single);
begin
  DefaultInterface.Set_StaticTension(Value);
end;

function TDriveProperties.Get_TheoCentres: Single;
begin
    Result := DefaultInterface.TheoCentres;
end;

procedure TDriveProperties.Set_TheoCentres(Value: Single);
begin
  DefaultInterface.Set_TheoCentres(Value);
end;

function TDriveProperties.Get_TheoNumberBelts: Single;
begin
    Result := DefaultInterface.TheoNumberBelts;
end;

procedure TDriveProperties.Set_TheoNumberBelts(Value: Single);
begin
  DefaultInterface.Set_TheoNumberBelts(Value);
end;

function TDriveProperties.Get_OperatingHoursL50: Single;
begin
    Result := DefaultInterface.OperatingHoursL50;
end;

procedure TDriveProperties.Set_OperatingHoursL50(Value: Single);
begin
  DefaultInterface.Set_OperatingHoursL50(Value);
end;

function TDriveProperties.Get_PulleyType: WideString;
begin
    Result := DefaultInterface.PulleyType;
end;

procedure TDriveProperties.Set_PulleyType(const Value: WideString);
  { Warning: The property PulleyType has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PulleyType := Value;
end;

function TDriveProperties.Get_MotorFrame: WideString;
begin
    Result := DefaultInterface.MotorFrame;
end;

procedure TDriveProperties.Set_MotorFrame(const Value: WideString);
  { Warning: The property MotorFrame has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MotorFrame := Value;
end;

function TDriveProperties.Get_MotorRating: Single;
begin
    Result := DefaultInterface.MotorRating;
end;

procedure TDriveProperties.Set_MotorRating(Value: Single);
begin
  DefaultInterface.Set_MotorRating(Value);
end;

function TDriveProperties.Get_MotorSpeed: Integer;
begin
    Result := DefaultInterface.MotorSpeed;
end;

procedure TDriveProperties.Set_MotorSpeed(Value: Integer);
begin
  DefaultInterface.Set_MotorSpeed(Value);
end;

function TDriveProperties.Get_MotorFLC: Single;
begin
    Result := DefaultInterface.MotorFLC;
end;

procedure TDriveProperties.Set_MotorFLC(Value: Single);
begin
  DefaultInterface.Set_MotorFLC(Value);
end;

function TDriveProperties.Get_MotorSTC: Single;
begin
    Result := DefaultInterface.MotorSTC;
end;

procedure TDriveProperties.Set_MotorSTC(Value: Single);
begin
  DefaultInterface.Set_MotorSTC(Value);
end;

function TDriveProperties.Get_MotorSize: Integer;
begin
    Result := DefaultInterface.MotorSize;
end;

procedure TDriveProperties.Set_MotorSize(Value: Integer);
begin
  DefaultInterface.Set_MotorSize(Value);
end;

function TDriveProperties.Get_MotorShaft: Integer;
begin
    Result := DefaultInterface.MotorShaft;
end;

procedure TDriveProperties.Set_MotorShaft(Value: Integer);
begin
  DefaultInterface.Set_MotorShaft(Value);
end;

function TDriveProperties.Get_MotorKey: WideString;
begin
    Result := DefaultInterface.MotorKey;
end;

procedure TDriveProperties.Set_MotorKey(const Value: WideString);
  { Warning: The property MotorKey has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MotorKey := Value;
end;

function TDriveProperties.Get_MotorWeight: Single;
begin
    Result := DefaultInterface.MotorWeight;
end;

procedure TDriveProperties.Set_MotorWeight(Value: Single);
begin
  DefaultInterface.Set_MotorWeight(Value);
end;

function TDriveProperties.Get_MotorDimEM: Integer;
begin
    Result := DefaultInterface.MotorDimEM;
end;

procedure TDriveProperties.Set_MotorDimEM(Value: Integer);
begin
  DefaultInterface.Set_MotorDimEM(Value);
end;

function TDriveProperties.Get_MotorDimCM: Integer;
begin
    Result := DefaultInterface.MotorDimCM;
end;

procedure TDriveProperties.Set_MotorDimCM(Value: Integer);
begin
  DefaultInterface.Set_MotorDimCM(Value);
end;

function TDriveProperties.Get_MotorDimBM: Integer;
begin
    Result := DefaultInterface.MotorDimBM;
end;

procedure TDriveProperties.Set_MotorDimBM(Value: Integer);
begin
  DefaultInterface.Set_MotorDimBM(Value);
end;

function TDriveProperties.Get_MotorDimHM: Integer;
begin
    Result := DefaultInterface.MotorDimHM;
end;

procedure TDriveProperties.Set_MotorDimHM(Value: Integer);
begin
  DefaultInterface.Set_MotorDimHM(Value);
end;

function TDriveProperties.Get_STMotor: Single;
begin
    Result := DefaultInterface.STMotor;
end;

procedure TDriveProperties.Set_STMotor(Value: Single);
begin
  DefaultInterface.Set_STMotor(Value);
end;

function TDriveProperties.Get_FanWidthStr: WideString;
begin
    Result := DefaultInterface.FanWidthStr;
end;

procedure TDriveProperties.Set_FanWidthStr(const Value: WideString);
  { Warning: The property FanWidthStr has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FanWidthStr := Value;
end;

function TDriveProperties.Get_FanHeightStr: WideString;
begin
    Result := DefaultInterface.FanHeightStr;
end;

procedure TDriveProperties.Set_FanHeightStr(const Value: WideString);
  { Warning: The property FanHeightStr has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FanHeightStr := Value;
end;

function TDriveProperties.Get_JMotor: Single;
begin
    Result := DefaultInterface.JMotor;
end;

procedure TDriveProperties.Set_JMotor(Value: Single);
begin
  DefaultInterface.Set_JMotor(Value);
end;

{$ENDIF}

class function CoDrives.Create: IDrives;
begin
  Result := CreateComObject(CLASS_Drives) as IDrives;
end;

class function CoDrives.CreateRemote(const MachineName: string): IDrives;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Drives) as IDrives;
end;

procedure TDrives.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{3BC2E711-2A4A-45E4-B351-490B92B7F028}';
    IntfIID:   '{A92CE544-AD6D-4A8A-A8E1-087F7C993548}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TDrives.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IDrives;
  end;
end;

procedure TDrives.ConnectTo(svrIntf: IDrives);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TDrives.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TDrives.GetDefaultInterface: IDrives;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TDrives.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TDrivesProperties.Create(Self);
{$ENDIF}
end;

destructor TDrives.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TDrives.GetServerProperties: TDrivesProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TDrives.Get_Count: Integer;
begin
    Result := DefaultInterface.Count;
end;

function TDrives.Get_ActiveDrive: IDrive;
begin
    Result := DefaultInterface.ActiveDrive;
end;

procedure TDrives.Set_ActiveDrive(const Value: IDrive);
begin
  DefaultInterface.Set_ActiveDrive(Value);
end;

function TDrives.Add(const Drive: IDrive): Integer;
begin
  Result := DefaultInterface.Add(Drive);
end;

procedure TDrives.Remove(Index: Integer);
begin
  DefaultInterface.Remove(Index);
end;

function TDrives.Items(Index: Integer): IDrive;
begin
  Result := DefaultInterface.Items(Index);
end;

function TDrives.SelectDrives(const Fan: IFan; const DriveInfo: IDriveInfo): Integer;
begin
  Result := DefaultInterface.SelectDrives(Fan, DriveInfo);
end;

procedure TDrives.Clear;
begin
  DefaultInterface.Clear;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TDrivesProperties.Create(AServer: TDrives);
begin
  inherited Create;
  FServer := AServer;
end;

function TDrivesProperties.GetDefaultInterface: IDrives;
begin
  Result := FServer.DefaultInterface;
end;

function TDrivesProperties.Get_Count: Integer;
begin
    Result := DefaultInterface.Count;
end;

function TDrivesProperties.Get_ActiveDrive: IDrive;
begin
    Result := DefaultInterface.ActiveDrive;
end;

procedure TDrivesProperties.Set_ActiveDrive(const Value: IDrive);
begin
  DefaultInterface.Set_ActiveDrive(Value);
end;

{$ENDIF}

class function CoDriveInfo.Create: IDriveInfo;
begin
  Result := CreateComObject(CLASS_DriveInfo) as IDriveInfo;
end;

class function CoDriveInfo.CreateRemote(const MachineName: string): IDriveInfo;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DriveInfo) as IDriveInfo;
end;

procedure TDriveInfo.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{126D2D73-7A5D-414E-AA58-336387C31252}';
    IntfIID:   '{E106870A-A9CA-4244-A422-E72D077403A4}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TDriveInfo.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IDriveInfo;
  end;
end;

procedure TDriveInfo.ConnectTo(svrIntf: IDriveInfo);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TDriveInfo.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TDriveInfo.GetDefaultInterface: IDriveInfo;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TDriveInfo.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TDriveInfoProperties.Create(Self);
{$ENDIF}
end;

destructor TDriveInfo.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TDriveInfo.GetServerProperties: TDriveInfoProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TDriveInfo.Get_Distance: Integer;
begin
    Result := DefaultInterface.Distance;
end;

procedure TDriveInfo.Set_Distance(Value: Integer);
begin
  DefaultInterface.Set_Distance(Value);
end;

function TDriveInfo.Get_SPZ: WordBool;
begin
    Result := DefaultInterface.SPZ;
end;

procedure TDriveInfo.Set_SPZ(Value: WordBool);
begin
  DefaultInterface.Set_SPZ(Value);
end;

function TDriveInfo.Get_BearingLoad: Integer;
begin
    Result := DefaultInterface.BearingLoad;
end;

procedure TDriveInfo.Set_BearingLoad(Value: Integer);
begin
  DefaultInterface.Set_BearingLoad(Value);
end;

function TDriveInfo.Get_StartTime: Integer;
begin
    Result := DefaultInterface.StartTime;
end;

procedure TDriveInfo.Set_StartTime(Value: Integer);
begin
  DefaultInterface.Set_StartTime(Value);
end;

function TDriveInfo.Get_SPA: WordBool;
begin
    Result := DefaultInterface.SPA;
end;

procedure TDriveInfo.Set_SPA(Value: WordBool);
begin
  DefaultInterface.Set_SPA(Value);
end;

function TDriveInfo.Get_SPB: WordBool;
begin
    Result := DefaultInterface.SPB;
end;

procedure TDriveInfo.Set_SPB(Value: WordBool);
begin
  DefaultInterface.Set_SPB(Value);
end;

function TDriveInfo.Get_SPC: WordBool;
begin
    Result := DefaultInterface.SPC;
end;

procedure TDriveInfo.Set_SPC(Value: WordBool);
begin
  DefaultInterface.Set_SPC(Value);
end;

function TDriveInfo.Get_Pole2: WordBool;
begin
    Result := DefaultInterface.Pole2;
end;

procedure TDriveInfo.Set_Pole2(Value: WordBool);
begin
  DefaultInterface.Set_Pole2(Value);
end;

function TDriveInfo.Get_Pole4: WordBool;
begin
    Result := DefaultInterface.Pole4;
end;

procedure TDriveInfo.Set_Pole4(Value: WordBool);
begin
  DefaultInterface.Set_Pole4(Value);
end;

function TDriveInfo.Get_Pole6: WordBool;
begin
    Result := DefaultInterface.Pole6;
end;

procedure TDriveInfo.Set_Pole6(Value: WordBool);
begin
  DefaultInterface.Set_Pole6(Value);
end;

function TDriveInfo.Get_Pole8: WordBool;
begin
    Result := DefaultInterface.Pole8;
end;

procedure TDriveInfo.Set_Pole8(Value: WordBool);
begin
  DefaultInterface.Set_Pole8(Value);
end;

function TDriveInfo.Get_L50_Life: Integer;
begin
    Result := DefaultInterface.L50_Life;
end;

procedure TDriveInfo.Set_L50_Life(Value: Integer);
begin
  DefaultInterface.Set_L50_Life(Value);
end;

function TDriveInfo.Get_L10_Life: Integer;
begin
    Result := DefaultInterface.L10_Life;
end;

procedure TDriveInfo.Set_L10_Life(Value: Integer);
begin
  DefaultInterface.Set_L10_Life(Value);
end;

function TDriveInfo.Get_RecordDirectory: WideString;
begin
    Result := DefaultInterface.RecordDirectory;
end;

procedure TDriveInfo.Set_RecordDirectory(const Value: WideString);
  { Warning: The property RecordDirectory has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.RecordDirectory := Value;
end;

function TDriveInfo.Get_FanHanding: FanHanding;
begin
    Result := DefaultInterface.FanHanding;
end;

procedure TDriveInfo.Set_FanHanding(Value: FanHanding);
begin
  DefaultInterface.Set_FanHanding(Value);
end;

function TDriveInfo.Get_MotorPosition: MotorPosition;
begin
    Result := DefaultInterface.MotorPosition;
end;

procedure TDriveInfo.Set_MotorPosition(Value: MotorPosition);
begin
  DefaultInterface.Set_MotorPosition(Value);
end;

function TDriveInfo.Get_FanArrangement: FanArrangement;
begin
    Result := DefaultInterface.FanArrangement;
end;

procedure TDriveInfo.Set_FanArrangement(Value: FanArrangement);
begin
  DefaultInterface.Set_FanArrangement(Value);
end;

function TDriveInfo.Get_Debug: WordBool;
begin
    Result := DefaultInterface.Debug;
end;

procedure TDriveInfo.Set_Debug(Value: WordBool);
begin
  DefaultInterface.Set_Debug(Value);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TDriveInfoProperties.Create(AServer: TDriveInfo);
begin
  inherited Create;
  FServer := AServer;
end;

function TDriveInfoProperties.GetDefaultInterface: IDriveInfo;
begin
  Result := FServer.DefaultInterface;
end;

function TDriveInfoProperties.Get_Distance: Integer;
begin
    Result := DefaultInterface.Distance;
end;

procedure TDriveInfoProperties.Set_Distance(Value: Integer);
begin
  DefaultInterface.Set_Distance(Value);
end;

function TDriveInfoProperties.Get_SPZ: WordBool;
begin
    Result := DefaultInterface.SPZ;
end;

procedure TDriveInfoProperties.Set_SPZ(Value: WordBool);
begin
  DefaultInterface.Set_SPZ(Value);
end;

function TDriveInfoProperties.Get_BearingLoad: Integer;
begin
    Result := DefaultInterface.BearingLoad;
end;

procedure TDriveInfoProperties.Set_BearingLoad(Value: Integer);
begin
  DefaultInterface.Set_BearingLoad(Value);
end;

function TDriveInfoProperties.Get_StartTime: Integer;
begin
    Result := DefaultInterface.StartTime;
end;

procedure TDriveInfoProperties.Set_StartTime(Value: Integer);
begin
  DefaultInterface.Set_StartTime(Value);
end;

function TDriveInfoProperties.Get_SPA: WordBool;
begin
    Result := DefaultInterface.SPA;
end;

procedure TDriveInfoProperties.Set_SPA(Value: WordBool);
begin
  DefaultInterface.Set_SPA(Value);
end;

function TDriveInfoProperties.Get_SPB: WordBool;
begin
    Result := DefaultInterface.SPB;
end;

procedure TDriveInfoProperties.Set_SPB(Value: WordBool);
begin
  DefaultInterface.Set_SPB(Value);
end;

function TDriveInfoProperties.Get_SPC: WordBool;
begin
    Result := DefaultInterface.SPC;
end;

procedure TDriveInfoProperties.Set_SPC(Value: WordBool);
begin
  DefaultInterface.Set_SPC(Value);
end;

function TDriveInfoProperties.Get_Pole2: WordBool;
begin
    Result := DefaultInterface.Pole2;
end;

procedure TDriveInfoProperties.Set_Pole2(Value: WordBool);
begin
  DefaultInterface.Set_Pole2(Value);
end;

function TDriveInfoProperties.Get_Pole4: WordBool;
begin
    Result := DefaultInterface.Pole4;
end;

procedure TDriveInfoProperties.Set_Pole4(Value: WordBool);
begin
  DefaultInterface.Set_Pole4(Value);
end;

function TDriveInfoProperties.Get_Pole6: WordBool;
begin
    Result := DefaultInterface.Pole6;
end;

procedure TDriveInfoProperties.Set_Pole6(Value: WordBool);
begin
  DefaultInterface.Set_Pole6(Value);
end;

function TDriveInfoProperties.Get_Pole8: WordBool;
begin
    Result := DefaultInterface.Pole8;
end;

procedure TDriveInfoProperties.Set_Pole8(Value: WordBool);
begin
  DefaultInterface.Set_Pole8(Value);
end;

function TDriveInfoProperties.Get_L50_Life: Integer;
begin
    Result := DefaultInterface.L50_Life;
end;

procedure TDriveInfoProperties.Set_L50_Life(Value: Integer);
begin
  DefaultInterface.Set_L50_Life(Value);
end;

function TDriveInfoProperties.Get_L10_Life: Integer;
begin
    Result := DefaultInterface.L10_Life;
end;

procedure TDriveInfoProperties.Set_L10_Life(Value: Integer);
begin
  DefaultInterface.Set_L10_Life(Value);
end;

function TDriveInfoProperties.Get_RecordDirectory: WideString;
begin
    Result := DefaultInterface.RecordDirectory;
end;

procedure TDriveInfoProperties.Set_RecordDirectory(const Value: WideString);
  { Warning: The property RecordDirectory has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.RecordDirectory := Value;
end;

function TDriveInfoProperties.Get_FanHanding: FanHanding;
begin
    Result := DefaultInterface.FanHanding;
end;

procedure TDriveInfoProperties.Set_FanHanding(Value: FanHanding);
begin
  DefaultInterface.Set_FanHanding(Value);
end;

function TDriveInfoProperties.Get_MotorPosition: MotorPosition;
begin
    Result := DefaultInterface.MotorPosition;
end;

procedure TDriveInfoProperties.Set_MotorPosition(Value: MotorPosition);
begin
  DefaultInterface.Set_MotorPosition(Value);
end;

function TDriveInfoProperties.Get_FanArrangement: FanArrangement;
begin
    Result := DefaultInterface.FanArrangement;
end;

procedure TDriveInfoProperties.Set_FanArrangement(Value: FanArrangement);
begin
  DefaultInterface.Set_FanArrangement(Value);
end;

function TDriveInfoProperties.Get_Debug: WordBool;
begin
    Result := DefaultInterface.Debug;
end;

procedure TDriveInfoProperties.Set_Debug(Value: WordBool);
begin
  DefaultInterface.Set_Debug(Value);
end;

{$ENDIF}

procedure Register;
begin
  RegisterComponents(dtlServerPage, [TCentSelect, TDrive, TDrives, TDriveInfo]);
end;

end.
