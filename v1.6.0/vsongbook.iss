; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "vSongBook"
#define MyAppVersion "1.6.0.16"
#define MyAppPublisher "Jackson Siro"
#define MyAppURL "http://vsongbook.appsmata.com" 
#define UpdatesURL "https://github.com/JackSiro/vSongBook-VB6.0"
#define MyOwnURL "http://twitter.com/jaksiro"
#define MyAppExeName "vSongBook.exe"

[Setup]
AppId={{77FDF823-C0A8-4F78-8C64-7188F6D24BD4}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyOwnURL}
AppUpdatesURL={#UpdatesURL}
DefaultDirName=C:\AppSmata\{#MyAppName}
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=yes
LicenseFile=D:\siros\projects\vSongBook\v1.6.0\Res\txt\license.txt
InfoBeforeFile=D:\siros\projects\vSongBook\v1.6.0\Res\txt\before.txt
InfoAfterFile=D:\siros\projects\vSongBook\v1.6.0\Res\txt\after.txt
OutputDir=D:\siros\projects\vSongBook\v1.6.0
OutputBaseFilename={#MyAppName}_v{#MyAppVersion}
SetupIconFile=D:\siros\projects\vSongBook\v1.6.0\Res\ico\app.ico
Compression=lzma
VersionInfoVersion={#MyAppVersion}
SolidCompression=yes
UninstallDisplayIcon={app}\{#MyAppExeName}
UninstallDisplayName={#MyAppName}

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"

[Files]
Source: "D:\siros\projects\vSongBook\v1.6.0\vSongBook.exe"; DestDir: "{app}"; Flags: ignoreversion 
Source: "D:\siros\projects\vSongBook\v1.6.0\Langs\*"; DestDir: "{app}\langs"; Flags: ignoreversion recursesubdirs createallsubdirs 
Source: "D:\siros\projects\vSongBook\v1.6.0\Res\*"; DestDir: "{app}\res"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "D:\siros\projects\vSongBook\v1.6.0\Reg\*"; DestDir: "{app}\res"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "D:\siros\projects\vSongBook\v1.6.0\Reg\TABSMATA.OCX"; DestDir: {sys}; Flags: onlyifdoesntexist regserver 
Source: "D:\siros\projects\vSongBook\v1.6.0\Reg\MSCOMCTL.OCX"; DestDir: {sys}; Flags: onlyifdoesntexist regserver
Source: "D:\siros\projects\vSongBook\v1.6.0\Reg\PICCLP32.OCX"; DestDir: {sys}; Flags: onlyifdoesntexist regserver
                                                
[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

