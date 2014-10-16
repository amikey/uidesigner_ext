program color_picker;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, fpg_base, fpg_main, frm_main;

procedure MainProc;
var
  frm: TMainForm;

begin
  fpgApplication.Initialize;
  frm := TMainForm.Create(nil);
   fpgApplication.MainForm:=frm ;
   try
    frm.Show;
    fpgApplication.Run;
  finally
    frm.Free;

  end;
end;

begin
  MainProc;
end.

