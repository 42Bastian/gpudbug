program GPUDBUG;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms
  { add your units here }, Unit1;

begin
  Application.Title:='';
  Application.Initialize;
  Application.CreateForm(TGDBUG, GDBUG);
  Application.Run;
end.

