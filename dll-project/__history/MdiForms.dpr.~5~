library MdiForms;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  SysUtils,
  Classes,
  forms,
  UMDIChild in '..\src\UMDIChild.pas' {FMDIChild};

{$R *.res}

var
  OldApplication : TApplication;
  OldScrean : TScreen;
  Form : TFMDIChild;

procedure callAForm( Ap : TApplication; Sc : TScreen ); stdcall;
begin

  if (OldApplication = nil) and (OldScrean = nil) then begin
    OldApplication := Application;
    OldScrean := Screen;

    Application := Ap;
    Screen := Sc;
  end;

  Form := TFMDIChild.Create(Application);
  Form.SetParentComponent(Application.MainForm);
  Form.Show;

end;

procedure deatach; stdcall;
begin
  if Assigned(Form) then
    Form := Nil;
  Application := OldApplication;
  Screen := OldScrean;
end;


Exports
  callAForm,
  deatach;

begin
end.
