#define AppName "XVB Player"
#define AppExeName "XVB.exe"
#ifndef AppVersion
  #define AppVersion "0.0.0"
#endif

[Setup]
AppId={{C2E7DCE8-4D89-4D9C-9D19-5D45E5C4B8F2}
AppName={#AppName}
AppVersion={#AppVersion}
AppPublisher=Jonathan Sanfilippo
DefaultDirName={autopf}\XVB
DefaultGroupName=XVB
DisableProgramGroupPage=yes
OutputDir=..\dist
OutputBaseFilename=XVB-Setup-{#AppVersion}
ArchitecturesInstallIn64BitMode=x64
ArchitecturesAllowed=x64
Compression=lzma2
SolidCompression=yes
WizardStyle=modern
SetupIconFile=..\\icon.ico
UninstallDisplayIcon={app}\{#AppExeName}

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"

[Tasks]
Name: "desktopicon"; Description: "Create a desktop shortcut"; GroupDescription: "Additional shortcuts:"; Flags: unchecked

[Files]
Source: "..\dist\XVB\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\XVB"; Filename: "{app}\{#AppExeName}"
Name: "{autodesktop}\XVB"; Filename: "{app}\{#AppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#AppExeName}"; Description: "Launch XVB"; Flags: nowait postinstall skipifsilent
