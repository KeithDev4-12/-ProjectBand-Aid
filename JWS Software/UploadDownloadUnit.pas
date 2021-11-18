unit UploadDownloadUnit;

interface

uses
  ShellApi, Classes, Winapi.Windows, SysUtils, Registry, Dialogs;

type
  TDataWScriptProcessor = class
  protected
    class function IsRegValueExists(aReg: TRegistry;
      const aRootKey: HKEY): boolean;
    class procedure EnableWinScriptingHost(const EnableFlag: boolean);
    class procedure CreateWScriptCommand(const aAppHandle: HWnd;
      const aAppPath: string; const aCommand: string);
  end;

  TDataUploader = class
  public
    class procedure Upload(const aAppHandle: HWnd; const aAppPath: string;
      const aDataCompleteFileName: string);

  end;

  TDataDownloader = class
  public
    class procedure Download(const aAppHandle: HWnd; const aAppPath: string;
      const destFolder,fileName: string);
  end;

implementation

const
  WIN_SCRIPT_HOST_SETTINGS_KEY =
    'SOFTWARE\Microsoft\Windows Script Host\Settings\';
  VALUE_NAME = 'Enabled';

  { TUploadDataToGadget }

class procedure TDataUploader.Upload(const aAppHandle: HWnd;
  const aAppPath: string; const aDataCompleteFileName: string);
const
  ADB_PUSH_COMMAND = 'adb push ';
  TABLET_DEFAULT_UPLOAD_LOCATION = ' /sdcard/Android/data/com.systems.alltech.jws/files/';

var
  ScriptCommand: string;
begin
  ScriptCommand := 'ShellAPI.sendkeys ' + '"' + ADB_PUSH_COMMAND + '"' + '"' +
    aDataCompleteFileName + '"' + '"' + TABLET_DEFAULT_UPLOAD_LOCATION + '"';

  TDataWScriptProcessor.EnableWinScriptingHost(true);
  TDataWScriptProcessor.CreateWScriptCommand(aAppHandle, aAppPath, ScriptCommand);
  //we need to disable again the Win Script Host for security
  TDataWScriptProcessor.EnableWinScriptingHost(false);
end;


{ TDataDownloader }

class procedure TDataDownloader.Download(const aAppHandle: HWnd;
  const aAppPath,
  destFolder,
  fileName: string);
const
  ADB_PULL_COMMAND = 'ADB pull ';
  TABLET_DEFAULT_DOWNLOAD_LOCATION = ' /sdcard/Android/data/com.systems.alltech.jws/files/';
var
  ScriptCommand: string;
begin
  ScriptCommand := 'ShellAPI.sendkeys ' + '"' + ADB_PULL_COMMAND +
     TABLET_DEFAULT_DOWNLOAD_LOCATION + fileName + ' ' + destFolder + '"';

  TDataWScriptProcessor.EnableWinScriptingHost(true);
  TDataWScriptProcessor.CreateWScriptCommand(aAppHandle, aAppPath, ScriptCommand);
  //we need to disable again the Win Script Host for security
  TDataWScriptProcessor.EnableWinScriptingHost(false);

end;

{ TDataWScriptProcessor }

class procedure TDataWScriptProcessor.CreateWScriptCommand(
  const aAppHandle: HWnd; const aAppPath, aCommand: string);
var
  ScriptCommand: TStringList;
  VBSFilename: string;
begin
  ScriptCommand := TStringList.Create;
  ScriptCommand.Add('SET ShellAPI=WScript.CreateObject("wscript.shell")');
  ScriptCommand.Add('WScript.sleep(200)');
  ScriptCommand.Add('ShellAPI.RUN "cmd.exe"');
  ScriptCommand.Add('WScript.sleep(200)');
  ScriptCommand.Add('ShellAPI.sendkeys "C:"');
  ScriptCommand.Add('WScript.sleep(100)');
  ScriptCommand.Add('ShellAPI.sendkeys "{enter}"');
  ScriptCommand.Add('ShellAPI.sendkeys "cd\"');
  ScriptCommand.Add('WScript.sleep(100)');
  ScriptCommand.Add('ShellAPI.sendkeys "{enter}"');
  ScriptCommand.Add('ShellAPI.sendkeys "cd C:\Platform-tools"');
  ScriptCommand.Add('WScript.sleep(100)');
  ScriptCommand.Add('ShellAPI.sendkeys "{enter}"');
  ScriptCommand.Add(aCommand);
  ScriptCommand.Add('WScript.sleep(100)');
  ScriptCommand.Add('ShellAPI.sendkeys "{enter}"');
  //ScriptCommand.Add('WScript.sleep(100)');
  //ScriptCommand.Add('ShellAPI.sendkeys "pause"');
  //ScriptCommand.Add('WScript.sleep(100)');
  //ScriptCommand.Add('ShellAPI.sendkeys "{enter}"');
  //ScriptCommand.Add('WScript.sleep(800)');
  //ScriptCommand.Add('ShellAPI.sendkeys "exit"');
  //ScriptCommand.Add('ShellAPI.sendkeys "{enter}"');


  VBSFilename := aAppPath + 'VBSScript.vbs';
  try
    ScriptCommand.SaveToFile(VBSFilename);

    ShellExecute(aAppHandle, 'OPEN', pWideChar(VBSFilename), nil, nil, SW_HIDE);

    Sleep(2000);
  finally
    ScriptCommand.Free;
    DeleteFile(VBSFilename);
  end;

end;

class procedure TDataWScriptProcessor.EnableWinScriptingHost(
  const EnableFlag: boolean);
var
  Reg: TRegistry;
  EnabledValue: integer;
  IsValueExists: boolean;
begin
  if EnableFlag then
    EnabledValue := $00000001
  else
    EnabledValue := $00000000;

  IsValueExists := false;
  Reg := TRegistry.Create;
  try
    IsValueExists := IsRegValueExists(Reg, HKEY_CURRENT_USER);
    if Not IsValueExists then
      IsValueExists := IsRegValueExists(Reg, HKEY_LOCAL_MACHINE);
    if IsValueExists then
    begin
      Reg.WriteInteger(VALUE_NAME, EnabledValue);
    end else begin
      ShowMessage('Cannot send data to tablet. Scripting Not Enabled. Must set it manually');
    end;

  finally
    Reg.Free;
  end;

end;

class function TDataWScriptProcessor.IsRegValueExists(aReg: TRegistry;
  const aRootKey: HKEY): boolean;
begin
    Result := false;

  aReg.RootKey := aRootKey;
  if aReg.KeyExists(WIN_SCRIPT_HOST_SETTINGS_KEY) then
  begin
    aReg.OpenKey(WIN_SCRIPT_HOST_SETTINGS_KEY,false);
    if aReg.ValueExists(VALUE_NAME) then
      Result := true;
  end;
end;



end.
