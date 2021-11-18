unit SQLiteFileUtilUnit;

interface

const
  SQLITE_DATA_DEST_DIRECTORY = 'JWS_READ_AND_BILL\';
  SQLITE_DATA_SOURCE_DIRECTORY = 'JWS_DB';
  SQLITE_DB_FILENAME = 'jws_mobile';
  SQLITE_DB_MAIN_FILENAME = 'jws_main';
  SQLITE_DB_EXT = '.db';
  SQLITE_DB_MOBILE = 'bwd_mobile.db';


type
  TSQLiteFileUtil = class
    private
      class var
        FAppRootDirectory: string;
      class function CreateDirectoryIfNotExists( const dir : string ) : boolean;
      class function CreateDirectoryRootFolderIfNotExists( const dir,ABillMonth,aDirFileName : string ) : boolean;
    public
      class procedure InitializeSourceSQLiteDB( const aSaveDir,aRootDir,aDirFileName,aDirFolderName,ABillMonth: string);
      class procedure CreateSQLiteDB( const aSaveDir,aRootDir,aDirFileName,aDirFolderName,ABillMonth,ASettingsDownload : string );
      class procedure CreateSQLiteMainDB( const PathLocation,FromLocation, ABillMonth : string );
      class procedure CreateTextFile( Const Filename :String );
      class procedure DeleteTextFile( const LocationTextPath:String  );

      class function GetSQLiteDataDestinationDirectory(const appRootDir: string): string;
      class function GetSqliteDirectory(aSaveDir,aDirFolderName,ABillMonth,ASettingsDownload:String):String;
  end;


implementation

uses
  Classes,
  SysUtils,
  System.StrUtils;

{ TSQLiteFileUtil }



class function TSQLiteFileUtil.CreateDirectoryRootFolderIfNotExists(
 const dir,ABillMonth,aDirFileName: string): boolean;
begin
  if not DirectoryExists( dir )
    then
      //CreateDir( GetCurrentDir + '\' + dir )
      CreateDir(  dir )
    else
      //DeleteFile( GetCurrentDir + '\' + dir + '\' + SQLITE_DB_FILENAME );
      DeleteFile( dir + '\'+ ABillMonth +'\'+ aDirFileName + '\' + SQLITE_DB_FILENAME + '.db'  );

    Result := true;
end;

class procedure TSQLiteFileUtil.CreateSQLiteDB(const aSaveDir,aRootDir,aDirFileName,aDirFolderName,ABillMonth,ASettingsDownload: string);
var
    sourceStream, destStream : TFileStream;
    LDestDir,XDestDir : string;
    LastName,FNameLetter,CharName:String;
    SaveDir:String;
  begin
    if Length(aSaveDir)<=3 then begin
     SaveDir := aSaveDir.Substring(0,2) ;
    end else begin
     SaveDir := aSaveDir;
    end;

    LastName := Trim(SplitString(aDirFolderName,'.')[1]);
    FNameLetter :=Trim(SplitString(aDirFolderName,'.')[0].Substring(0,1));
    CharName :=  FNameLetter + '_' + LastName;
    LDestDir := SaveDir + '\' + SQLITE_DATA_DEST_DIRECTORY + ASettingsDownload + '\' + ABillMonth + '\' + CharName ;

    if not  CreateDirectoryRootFolderIfNotExists (SaveDir + '\' + SQLITE_DATA_DEST_DIRECTORY,ABillMonth,CharName)
    then
    exit;

    if not  CreateDirectoryRootFolderIfNotExists (SaveDir + '\' + SQLITE_DATA_DEST_DIRECTORY + ASettingsDownload + '\',ABillMonth,CharName)
    then
    exit;

    if not  CreateDirectoryRootFolderIfNotExists (SaveDir + '\' + SQLITE_DATA_DEST_DIRECTORY + ASettingsDownload + '\' + ABillMonth + '\',ABillMonth,CharName)
    then
    exit;

    if not  CreateDirectoryRootFolderIfNotExists (SaveDir + '\' + SQLITE_DATA_DEST_DIRECTORY + ASettingsDownload + '\' + ABillMonth + '\' + CharName + '\' ,ABillMonth,CharName)
    then
    exit;

    if not CreateDirectoryIfNotExists( LDestDir )
    then
    exit;

    XDestDir := SaveDir + '\' + SQLITE_DATA_DEST_DIRECTORY + 'jws_upload\'+ABillMonth+'\';

    if not DirectoryExists(XDestDir) then begin
      ForceDirectories(XDestDir);
    end;


    sourceStream := TFileStream.Create( aRootDir + '\' +
      SQLITE_DB_FILENAME + SQLITE_DB_EXT, fmOpenRead );
    try
      destStream := TFileStream.Create( LDestDir + '\' + SQLITE_DB_FILENAME + SQLITE_DB_EXT,
        fmCreate );
      try
        destStream.CopyFrom( sourceStream, 0 );
      finally
        destStream.Free;
      end;

    finally
      sourceStream.Free;
    end;

end;

class procedure TSQLiteFileUtil.CreateSQLiteMainDB(const PathLocation,FromLocation, ABillMonth : string);
var
    sourceStream, destStream : TFileStream;
    LDestDir,SDestDir : string;
    LastName,FNameLetter,CharName:String;
    SaveDir,FromDir:String;
  begin


    if Length(PathLocation)<=3 then begin
     SaveDir := PathLocation.Substring(0,2) ;
    end else begin
     SaveDir := PathLocation;
    end;

    if Length(FromLocation)<=3 then begin
     FromDir := FromLocation.Substring(0,2) ;
    end else begin
     FromDir := FromLocation;
    end;

    LDestDir := SaveDir  + 'JWS_MAINDATABASE\';

    ForceDirectories(LDestDir);

    sourceStream := TFileStream.Create( FromDir + '\' +
      SQLITE_DB_MAIN_FILENAME + SQLITE_DB_EXT, fmOpenRead );
    try
      destStream := TFileStream.Create( LDestDir + '\jws_' + Trim(ABillMonth.Substring(2,4)) + SQLITE_DB_EXT,
        fmCreate );
      try
        destStream.CopyFrom( sourceStream, 0 );
      finally
        destStream.Free;
      end;

    finally
      sourceStream.Free;
    end;

end;

class procedure TSQLiteFileUtil.CreateTextFile(Const Filename :String);
Var
  FileText : TextFile;
begin
  /// Create Text File
  if FileExists(Filename) then begin
    DeleteFile(Filename);
  end else if not DirectoryExists('C:\Test\') then begin
    ForceDirectories('C:\Test\')
  end;

  AssignFile(FileText,Filename);
  ReWrite(FileText);
  CloseFile(FileText);
end;

class procedure TSQLiteFileUtil.DeleteTextFile(const LocationTextPath: String);
begin
  // Delete Text File
end;

class function TSQLiteFileUtil.GetSQLiteDataDestinationDirectory(
  const appRootDir: string): string;
begin
  Result := ExtractFilePath(appRootDir) + SQLITE_DATA_DEST_DIRECTORY;
end;

class function TSQLiteFileUtil.GetSqliteDirectory(aSaveDir,aDirFolderName,ABillMonth,ASettingsDownload:String): String;
Var
  LDestDir,SaveDir,CharName,LastName,FNameLetter :String;
begin

  if Length(aSaveDir)<=3 then begin
   SaveDir := aSaveDir.Substring(0,2) ;
  end else begin
   SaveDir := aSaveDir;
  end;
  LastName := Trim(SplitString(aDirFolderName,'.')[1]);
  FNameLetter :=Trim(SplitString(aDirFolderName,'.')[0].Substring(0,1));
  CharName :=  FNameLetter + '_' + LastName;

  LDestDir := SaveDir + '\' + SQLITE_DATA_DEST_DIRECTORY + ASettingsDownload + '\' + ABillMonth + '\' + CharName;
  Result := LDestDir + '\' + SQLITE_DB_FILENAME  + SQLITE_DB_EXT;
end;

class function TSQLiteFileUtil.CreateDirectoryIfNotExists(
  const dir: string): boolean;
begin
  if not DirectoryExists( dir )
    then
      //CreateDir( GetCurrentDir + '\' + dir )
      CreateDir(  dir )
    else
      //DeleteFile( GetCurrentDir + '\' + dir + '\' + SQLITE_DB_FILENAME );
      DeleteFile( dir + '\' + SQLITE_DB_FILENAME );

    Result := true;
end;

class procedure TSQLiteFileUtil.InitializeSourceSQLiteDB( const aSaveDir,aRootDir,aDirFileName,aDirFolderName,ABillMonth: string);
var
    sourceStream, destStream : TFileStream;
    LDest : string;
  begin

    LDest := aSaveDir + '\' + SQLITE_DATA_DEST_DIRECTORY + aDirFolderName ;
    if FileExists( LDest+'\'+SQLITE_DB_FILENAME+ '_' + ABillMonth + SQLITE_DB_EXT )
    then
      DeleteFile( LDest+'\'+SQLITE_DB_FILENAME+ '_' + ABillMonth + SQLITE_DB_EXT  );

    sourceStream := TFileStream.Create( aRootDir + '\' +
      SQLITE_DB_FILENAME + SQLITE_DB_EXT, fmOpenRead );
    try
      destStream := TFileStream.Create( LDest + '\' + SQLITE_DB_FILENAME + '_' + ABillMonth + SQLITE_DB_EXT, fmCreate );
      try
        destStream.CopyFrom( sourceStream, 0 );
      finally
        destStream.Free;
      end;

    finally
      sourceStream.Free;
    end;

  end;


end.
