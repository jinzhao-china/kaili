unit Unit_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Kruger_TLB;

type
  TForm1 = class(TForm)
    txtVolume: TEdit;
    txtPressure: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    lvResults: TListView;
    txtInfo: TMemo;
    bnSpectrum: TButton;
    bnPerformancePoints: TButton;
    bnDrives: TButton;
    bnChart: TButton;
    sd: TSaveDialog;
    procedure Button1Click(Sender: TObject);
    procedure bnSpectrumClick(Sender: TObject);
    procedure bnPerformancePointsClick(Sender: TObject);
    procedure bnDrivesClick(Sender: TObject);
    procedure bnChartClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit_GlobalFunctions, DateUtils;

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
var
  SelectionInformation : SelectInfo;
  SelectionEngine : ICentSelect;
  Fans : IFans;
  Fan : IFan;
  i : integer;
  ListItem : TListItem;
    Spectrum : ISpectrum;
begin
  SelectionEngine := CoCentSelect.Create;
  SelectionInformation.RecordDirectory := ExtractFilePath(Application.ExeName) + '\records\';
  SelectionInformation.Volume := strtoint(txtVolume.Text);
  SelectionInformation.Pressure := strtoint(txtPressure.Text);
  SelectionInformation.ProductType := ptAny;
  SelectionInformation.VolumeUnit := vuM3S;
	SelectionInformation.PressureUnit := puPa;
	SelectionInformation.PressureType := ptStatic;
	SelectionInformation.CallType := 0;
	SelectionInformation.Hz := 50;
	SelectionInformation.Temperature := 20;
	SelectionInformation.Altitude := 0;
	SelectionInformation.ProductType := ptAny;
	SelectionInformation.MinStyle := msSC;
	SelectionInformation.MinClass := fcI;
	SelectionInformation.SoundCondition := scRoom;
	SelectionInformation.FanCasing := fcSingleFrame;
	SelectionInformation.FanWidth := fwAny; // Single;
	SelectionInformation.VelocityUnit := vuMS;
	SelectionInformation.OutletType := otDucted;
	SelectionInformation.ServiceFactor := 1.3;
	SelectionInformation.AltitudeUnit := auFT;
	SelectionInformation.SoundDistance := 1;
	SelectionInformation.SoundDistanceUnit := duM;
	SelectionInformation.TemperatureUnit := DegreeC;
	SelectionInformation.BladeType := btForwardCurve;
  Fans := (SelectionEngine.Select(SelectionInformation) As IFans);
  //One based collection of results to maintain compatibility with legacy software.
  lvResults.Clear;
  for i := 1 to Fans.Count do begin
    Fan := Fans.Item(i) As IFan;
    with lvResults.Items.Add do begin
      Caption := Fan.FanDescription;
      Data := TRowData.Create(Fan);
      SubItems.Add(FormatFloat('0 rpm',Fan.FanSpeed));
      SubItems.Add(FormatFloat('0.00 kW',Fan.PwrCondition));
      SubItems.Add(Fan.FanMotorFrame);
      SubItems.Add(FormatFloat('0.## kW',Fan.FanMotorRating));
      SubItems.Add(FormatFloat('0 dB',Fan.Inlet_LwLin_Overall));
    end;
  end;
  if lvResults.Items.Count > 0 then lvResults.ItemFocused := lvResults.Items[0];

end;

procedure TForm1.bnSpectrumClick(Sender: TObject);
var
  Fan : IFan;
  Spectrum : ISpectrum;
  SelectionEngine : ICentSelect;
  LwSpectrum : SingleArray;
  LwASpectrum : SingleArray;
  LpASpectrum : SingleArray;
begin
  txtInfo.Clear;
  if Assigned(lvResults.ItemFocused) then begin
    Fan := IFan(TRowData(lvResults.ItemFocused.Data).ComObj);
    SelectionEngine := CoCentSelect.Create;
    Spectrum := SelectionEngine.SoundSpectrumEx(Fan,0,false) As ISpectrum;
    SafeArrayToSingleArray(Spectrum.Inlet_LwLin_Spectrum,lwSpectrum);
    SafeArrayToSingleArray(Spectrum.Inlet_LwA_Spectrum,lwASpectrum);
    SafeArrayToSingleArray(Spectrum.Inlet_LpA_Spectrum,lpASpectrum);
    txtInfo.Lines.Add(Format('Inlet Lw       %0.0f %0.0f %0.0f %0.0f %0.0f %0.0f %0.0f %0.0f',[LwSpectrum[0],LwSpectrum[1],LwSpectrum[2],LwSpectrum[3],LwSpectrum[4],LwSpectrum[5],LwSpectrum[6],LwSpectrum[7]]));
    txtInfo.Lines.Add(Format('Inlet LwA      %0.0f %0.0f %0.0f %0.0f %0.0f %0.0f %0.0f %0.0f',[LwASpectrum[0],LwSpectrum[1],LwSpectrum[2],LwSpectrum[3],LwSpectrum[4],LwSpectrum[5],LwSpectrum[6],LwSpectrum[7]]));
    txtInfo.Lines.Add(Format('Inlet LpA      %0.0f %0.0f %0.0f %0.0f %0.0f %0.0f %0.0f %0.0f',[LpASpectrum[0],LwSpectrum[1],LwSpectrum[2],LwSpectrum[3],LwSpectrum[4],LwSpectrum[5],LwSpectrum[6],LwSpectrum[7]]));
  end else showmessage('Please select a fan from the list first');
end;

procedure TForm1.bnPerformancePointsClick(Sender: TObject);
var
  i : integer;
  Fan : IFan;
  Curve : ICurve;
  SelectionEngine : ICentSelect;
  Volume : SingleArray;
  Pressure : SingleArray;
  Power : SingleArray;
begin
  txtInfo.Clear;
  if Assigned(lvResults.ItemFocused) then begin
    Fan := IFan(TRowData(lvResults.ItemFocused.Data).ComObj);
    SelectionEngine := CoCentSelect.Create;
    Curve := SelectionEngine.CurvePoints(Fan,0) As ICurve;
    SafeArrayToSingleArray(Curve.VolumePoints,Volume);
    SafeArrayToSingleArray(Curve.PressurePoints,Pressure);
    SafeArrayToSingleArray(Curve.PowerPoints,Power);
    txtInfo.Lines.Add(' Nr           m3/s             Pa             kW');
    for i := 0 to Length(Volume) - 1 do begin
      txtInfo.Lines.Add(Format('%3d%15.4f%15.4f%15.4f',[i+1,Volume[i],Pressure[i],Power[i]]));
    end;
    txtInfo.SelStart := 1;
    txtInfo.SelLength := 1;
  end else showmessage('Please select a fan from the list first');
end;

procedure TForm1.bnDrivesClick(Sender: TObject);
var
  i : integer;
  Fan : IFan;
  Drives : IDrives;
  Drive : IDrive;
  DriveInfo : IDriveInfo;
  Volume : SingleArray;
  Pressure : SingleArray;
  Power : SingleArray;
begin
  txtInfo.Clear;
  if Assigned(lvResults.ItemFocused) then begin
    Fan := IFan(TRowData(lvResults.ItemFocused.Data).ComObj);
    Drives := CoDrives.Create;
    DriveInfo := CoDriveInfo.Create;
    DriveInfo.RecordDirectory := ExtractFilePath(Application.ExeName) + '\records\';
    DriveInfo.Distance := 0;       // 0 = Standard. 1 to 7 as Program ComboBox. Over 10 = user specified distance in mm
    DriveInfo.BearingLoad := 1;           // 0 = low. 1 = medium. 2 = heavy. 3 = Extra Heavy
    DriveInfo.StartTime := 0;      // 0 = Standard times. Over 0 = user defined time in seconds
    DriveInfo.SPZ := TRUE;         // True or False
    DriveInfo.SPA := TRUE;        // True or False
    DriveInfo.SPB := TRUE;        // True or False
    DriveInfo.SPC := TRUE;        // True or False
    DriveInfo.Pole2 := TRUE;      // True or False
    DriveInfo.Pole4 := TRUE;       // True or False
    DriveInfo.Pole6 := TRUE;       // True or False
    DriveInfo.Pole8 := TRUE;      // True or False
    DriveInfo.L50_Life := 75000;   // INTEGER
    DriveInfo.L50_Life := 300000;  // INTEGER
    DriveInfo.MotorPosition := 1;  // 1 = Z. 2 = W
    DriveInfo.FanHanding := 0;     // 0 = CW90. 1 = CW180. 2 = CW270. 3 = CW360.  4 = CCW90. 5 = CCW180. 6 = CCW270. 7 = CCW360.
    DriveInfo.FanArrangement := 1; // 1 = Set
    Drives.SelectDrives(Fan,DriveInfo);
    txtInfo.Lines.Add(' Nr         Deviation      Actual Speed   Starting Torque');
    for i := 0 to Drives.Count - 1 do begin
      Drive := Drives.Items(i);
      txtInfo.Lines.Add(Format('%3d%18.4f%18.0d%18.4f',[i+1,Drive.Deviation,Drive.ActualFanSpeed,Drive.StartingTorque]));
    end;
    txtInfo.SelStart := 1;
    txtInfo.SelLength := 1;
  end else showmessage('Please select a fan from the list first');
end;

procedure TForm1.bnChartClick(Sender: TObject);
var
  Fan : IFan;
  Spectrum : ISpectrum;
  SelectionEngine : ICentSelect;
  LwSpectrum : SingleArray;
  LwASpectrum : SingleArray;
  LpASpectrum : SingleArray;
begin
  txtInfo.Clear;
  if Assigned(lvResults.ItemFocused) then begin
    Fan := IFan(TRowData(lvResults.ItemFocused.Data).ComObj);
    SelectionEngine := CoCentSelect.Create;
    sd.FileName := StringReplace(Fan.FanDescription,'/','-',[rfReplaceAll]);
    if sd.Execute then begin

      (*
        coGIF = $00000000;
        coBMP = $00000001;
        coWMF = $00000002;
      *)
      SelectionEngine.GenerateChart(Fan,sd.FileName,800,600,sd.FilterIndex-1);
    end;
  end else showmessage('Please select a fan from the list first');
end;

end.
