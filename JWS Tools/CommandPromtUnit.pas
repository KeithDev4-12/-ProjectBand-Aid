unit CommandPromtUnit;

interface
const
  SQLITE_DATA_DEST_DIRECTORY = 'JWS_READ_AND_BILL\';
  SQLITE_DATA_SOURCE_DIRECTORY = 'JWS_DB';
  SQLITE_DB_FILENAME = 'jws_mobile';
  SQLITE_DB_MAIN_FILENAME = 'jws_main';
  SQLITE_DB_EXT = '.db';
  SQLITE_DB_MOBILE = 'bwd_mobile.db';
  QUERY_ADB_DEVICES = 'adb devices';
  QUERY_ADB_GETPROPERTIES = 'getprop';
  QUERY_ADB_SHELL = 'adb shell ';
  QUERY_ADB_PATH = 'ls sdcard/Android/data/com.systems.alltech.jws/files/';
  QUERY_ADB_DEVICE_NAME = ' persist.sys.device_name';
  QUERY_ADB_SERIAL = ' ro.boot.serialno';


type
  TCMDPromtUtil = Class
    Private

    Public
      class function GetDosOutput(CommandLine: string; Work: string = 'C:\Platform-tools\'): string;
      class function isDevicesConnected():Boolean;
      class function GetResultQuery(AVarValue:String):String;
      class function getWlanIpAddress():String;
      class function ConnectIpAddress(AIpAddressVar:String):Boolean;
  End;

implementation
  uses Winapi.Windows,StdCtrls,SysUtils,Classes,Vcl.Forms,StrUtils ;
{ TCMDPromtUtil }

var
  AIpAddress:String;

class function TCMDPromtUtil.ConnectIpAddress(AIpAddressVar: String): Boolean;
var
  //AMemo:TMemo;
  Aresult :Boolean;
  AMemo:TStringList;
CONST
  ADB_CONNECT = 'adb connect ';
begin
   AMemo := TStringList.Create();
  try
   Amemo.Text := GetDosOutput(ADB_CONNECT+AIpAddressVar+':5555');
   if Uppercase(Amemo.Strings[0]).Contains(' CONNECTED ') then begin
     Aresult := True;
   end else begin
     Aresult := False;
   end;
  finally
    AMemo.Free;
  end;
  Result := Aresult
end;

class function TCMDPromtUtil.GetDosOutput(CommandLine, Work: string): string;
var
  SA: TSecurityAttributes;
  SI: TStartupInfo;
  PI: TProcessInformation;
  StdOutPipeRead, StdOutPipeWrite: THandle;
  WasOK: Boolean;
  Buffer: array[0..255] of AnsiChar;
  BytesRead: Cardinal;
  WorkDir: string;
  Handle: Boolean;
begin
  Result := '';
  with SA do begin
    nLength := SizeOf(SA);
    bInheritHandle := True;
    lpSecurityDescriptor := nil;
  end;
  CreatePipe(StdOutPipeRead, StdOutPipeWrite, @SA, 0);
  try
    with SI do
    begin
      FillChar(SI, SizeOf(SI), 0);
      cb := SizeOf(SI);
      dwFlags := STARTF_USESHOWWINDOW or STARTF_USESTDHANDLES;
      wShowWindow := SW_HIDE;
      hStdInput := GetStdHandle(STD_INPUT_HANDLE); // don't redirect stdin
      hStdOutput := StdOutPipeWrite;
      hStdError := StdOutPipeWrite;
    end;
    WorkDir := Work;
    Handle := CreateProcess(nil, PChar('cmd.exe /C' + CommandLine),
                            nil, nil, True, 0, nil,
                            PChar(WorkDir), SI, PI);
    CloseHandle(StdOutPipeWrite);
    if Handle then
      try
        repeat
          WasOK := ReadFile(StdOutPipeRead, Buffer, 255, BytesRead, nil);
          if BytesRead > 0 then
          begin
            Buffer[BytesRead] := #0;
            Result := Result + Buffer;
          end;
        until not WasOK or (BytesRead = 0);
        WaitForSingleObject(PI.hProcess, INFINITE);
      finally
        CloseHandle(PI.hThread);
        CloseHandle(PI.hProcess);
      end;
  finally
    CloseHandle(StdOutPipeRead);
  end;
end;

class function TCMDPromtUtil.GetResultQuery(AVarValue: String): String;
var
  //AMemo:TMemo;
  Aresult :String;
  AMemo:TStringList;
begin
   AMemo := TStringList.Create();
  try
   Amemo.Text := GetDosOutput(AVarValue);
   Aresult:= Uppercase(Amemo.Strings[0]);
   if Aresult.Contains(UpperCase('more than one device')) then begin
     Exit;
   end;

  finally
    AMemo.Free;
  end;
  Result := Aresult
end;

class function TCMDPromtUtil.getWlanIpAddress: String;
Var
  AResult,AIpAddressVar:String;
  AMemo,AMemo2,AMemo3,AMemo4,AMemo5:TStringList;
  SubNet1,Subnet2,Subnet3,SubNet4,Test : String;
  I,Index_number:Integer;

CONST
  ADB_TCPIP_5555 = 'adb tcpip 5555';
  ADB_SHELL_IP_ADD = 'adb shell ip addr show wlan0';
begin
  Index_number := 3;
  AMemo := TStringList.Create();
  AMemo2 := TStringList.Create();
  AMemo3 := TStringList.Create();
  AMemo4 := TStringList.Create();
  AMemo5 := TStringList.Create();
  try
   GetDosOutput('adb disconnect');
   Amemo.Text := GetDosOutput(ADB_TCPIP_5555);
   if Uppercase(Amemo.Strings[0]).Contains('RESTARTING') then begin
     Amemo2.Text := GetDosOutput(ADB_SHELL_IP_ADD);
     if UpperCase(AMemo2.text).Contains('INET ') then begin
        AIpAddress := ReplaceStr(ReplaceStr(UpperCase(Amemo2.Strings[2]),'INET ',''),' ','');
        SubNet1 := SplitString(AIpAddress,'.')[0];
        SubNet2 := SplitString(AIpAddress,'.')[1];
        SubNet3 := SplitString(AIpAddress,'.')[2];
        SubNet4 := SplitString(AIpAddress,'.')[3].Substring(0,3);
        if SubNet4.Contains('/') then begin
          for i := 0 to 2 do begin
            Test := SubNet4.Substring(i,1);
            if Test.Contains('/') then begin
              Index_number:=i;
            end;
          end;
        end;

        SubNet4 := Subnet4.Substring(0,Index_number);
        AIpAddressVar := SubNet1 + '.' + SubNet2 + '.' + SubNet3 + '.' + SubNet4;
     end;

   end else begin
     AIpAddressVar := 'False';
     //ShowMessage('Please disconnect USB Connector. Devices is Already Connected Wireless.');
   end;
  finally
    AMemo.Free;
    AMemo2.Free;
    AMemo3.Free;
    AMemo4.Free;
    AMemo5.Free;
  end;
  AIpAddress := AIpAddressVar;
  Result := AIpAddressVar;
end;

class function TCMDPromtUtil.isDevicesConnected(): Boolean;
Var
//AMemo:TMemo;
Aresult :Boolean;
AMemo:TStringList;
begin

  AMemo := TStringList.Create();
  try
   Amemo.Text := GetDosOutput('adb devices');

   if Amemo.Count <= 0 then begin
     Aresult := False;
     AMemo.Free;
     Exit;
   end;

   if Uppercase(Amemo.Strings[1]).Contains('DEVICE') then begin
     Aresult:= True;
   end else if Uppercase(Amemo.Strings[1]).Contains('UNAUTHORIZED') then begin
     Aresult:= False;
     raise Exception.Create('Devices is Connected But Security is restricting the ADB protocol!');
   end else begin
     Aresult := False;
   end;

  finally
    AMemo.Free;
  end;
  Result := Aresult
end;

end.
