program fpGUITemplate;

{$mode objfpc}{$H+}
  {$DEFINE UseCThreads}

uses {$IFDEF UNIX} {$IFDEF UseCThreads}
  {$ENDIF} {$ENDIF}
  fpg_main,
  fpg_form { you can add units after this };

type
   Tform1 = class(TfpgForm)
  private
    {@VFD_HEAD_BEGIN: form1}
    {@VFD_HEAD_END: form1}
  public
    procedure AfterCreate; override;
  end;

{@VFD_NEWFORM_DECL}
{@VFD_NEWFORM_IMPL}

procedure Tform1.AfterCreate;
begin
  {%region 'Auto-generated GUI code' -fold}

  {@VFD_BODY_BEGIN: form1}
  Name := 'form1';
  SetPosition(346, 240, 502, 385);
  WindowTitle := 'form1';
  Hint := '';
  {@VFD_BODY_END: form1}
  {%endregion}
end;

  procedure MainProc;
  var
    frm: Tform1;
  begin
    fpgApplication.Initialize;
    fpgApplication.CreateForm(Tform1, frm);
    fpgApplication.MainForm := frm;
   try
      frm.Show;
      frm.UpdateWindowPosition;
      fpgApplication.Run;
    finally
      frm.Free;
    end;
  end;

begin
    MainProc;
end.
