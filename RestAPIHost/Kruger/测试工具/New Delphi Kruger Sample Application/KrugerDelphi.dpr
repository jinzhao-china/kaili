program KrugerDelphi;

uses
  Forms,
  Unit_MainForm in 'Unit_MainForm.pas' {Form1},
  Unit_GlobalFunctions in 'Unit_GlobalFunctions.pas',
  Kruger_TLB in 'Kruger_TLB.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
