program Project2;

uses
  Vcl.Forms,
  Unit3 in 'D:\Documents\Embarcadero\Studio\FIXJWD\Unit3.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
