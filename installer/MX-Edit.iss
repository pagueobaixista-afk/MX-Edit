; Instalador do HeadRush MX5 PC Editor (fork do MX-Edit) - Inno Setup 6
; Compilar:  ISCC.exe /DAppVer=0.9.6-beta.4-arte.1 /DExeSrc=<MX-Edit.exe> /O<saida> installer\MX-Edit.iss
;
; Instala so para o usuario (sem administrador), cria atalhos e desinstalador.
; A arte dos pedais NAO esta no instalador: se o arquivo MX-Edit_arte_pedais.zip estiver na mesma
; pasta do Setup (como quando os dois sao baixados da Release), ele e extraido em {app}\arte.

#ifndef AppVer
  #define AppVer "0.9.6-beta.4-arte.1"
#endif
#ifndef ExeSrc
  #define ExeSrc "..\editor\exe\MX-Edit.exe"
#endif
#define ArtZip "MX-Edit_arte_pedais.zip"

[Setup]
AppId={{6C2E7F3A-9B1D-4E55-A1C8-3F0D2B7E9A41}
AppName=HeadRush MX5 PC Editor (MX-Edit)
AppVersion={#AppVer}
AppVerName=HeadRush MX5 PC Editor (MX-Edit) {#AppVer}
AppPublisher=pagueobaixista-afk (fork of TicT4x/MX-Edit)
AppPublisherURL=https://github.com/pagueobaixista-afk/MX-Edit
AppSupportURL=https://github.com/pagueobaixista-afk/MX-Edit/issues
AppUpdatesURL=https://github.com/pagueobaixista-afk/MX-Edit/releases
DefaultDirName={autopf}\MX-Edit
DefaultGroupName=MX-Edit
DisableProgramGroupPage=yes
PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog
OutputBaseFilename=MX-Edit_{#AppVer}_Setup
SetupIconFile=..\editor\mxedit.ico
UninstallDisplayIcon={app}\MX-Edit.exe
Compression=lzma2/max
SolidCompression=yes
WizardStyle=modern
CloseApplications=yes
RestartApplications=no
ArchitecturesInstallIn64BitMode=x64compatible
LicenseFile=..\LICENSE
ShowLanguageDialog=auto
ArchiveExtraction=full

[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl"
Name: "ptbr"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "es"; MessagesFile: "compiler:Languages\Spanish.isl"

[CustomMessages]
en.ArtFound=Pedal pictures found (%1): they will be installed with the editor.
ptbr.ArtFound=Imagens dos pedais encontradas (%1): serão instaladas com o editor.
es.ArtFound=Imágenes de los pedales encontradas (%1): se instalarán con el editor.
en.ArtMissing=Pedal pictures not found. The editor works without them (drawn symbols). To get them, download %1 from the same Release, put it next to this Setup and run it again.
ptbr.ArtMissing=Imagens dos pedais não encontradas. O editor funciona sem elas (símbolos desenhados). Para tê-las, baixe %1 da mesma Release, coloque ao lado deste Setup e rode de novo.
es.ArtMissing=No se encontraron las imágenes de los pedales. El editor funciona sin ellas (símbolos dibujados). Para tenerlas, descarga %1 de la misma Release, ponlo junto a este Setup y ejecútalo de nuevo.
en.ArtInstalling=Installing pedal pictures...
ptbr.ArtInstalling=Instalando as imagens dos pedais...
es.ArtInstalling=Instalando las imágenes de los pedales...
en.ArtFailed=The pedal pictures could not be extracted (%1). The editor works without them.
ptbr.ArtFailed=Não foi possível extrair as imagens dos pedais (%1). O editor funciona sem elas.
es.ArtFailed=No se pudieron extraer las imágenes de los pedales (%1). El editor funciona sin ellas.
en.BridgeNote=Remember: the MX5 needs the MX5 Bridge 0.7 (included in the HeadRush MX5 NAM A2 firmware).
ptbr.BridgeNote=Lembrete: o MX5 precisa da MX5 Bridge 0.7 (já vem no firmware HeadRush MX5 NAM A2).
es.BridgeNote=Recuerda: el MX5 necesita el MX5 Bridge 0.7 (incluido en el firmware HeadRush MX5 NAM A2).

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"

[Files]
Source: "{#ExeSrc}"; DestDir: "{app}"; DestName: "MX-Edit.exe"; Flags: ignoreversion
Source: "..\LICENSE"; DestDir: "{app}"; DestName: "LICENSE.txt"; Flags: ignoreversion
; arte dos pedais: so se o zip estiver ao lado do Setup (nao vem dentro do instalador)
Source: "{src}\{#ArtZip}"; DestDir: "{app}\arte"; ExternalSize: 15000000; Flags: external extractarchive recursesubdirs createallsubdirs ignoreversion skipifsourcedoesntexist

[Icons]
Name: "{autoprograms}\MX-Edit (HeadRush MX5 PC Editor)"; Filename: "{app}\MX-Edit.exe"
Name: "{autodesktop}\MX-Edit"; Filename: "{app}\MX-Edit.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\MX-Edit.exe"; Description: "{cm:LaunchProgram,MX-Edit}"; Flags: nowait postinstall skipifsilent

[UninstallDelete]
Type: filesandordirs; Name: "{app}\arte"

[Code]
function ArtZipPath(): String;
begin
  Result := ExpandConstant('{src}\{#ArtZip}');
end;

function UpdateReadyMemo(Space, NewLine, MemoUserInfoInfo, MemoDirInfo, MemoTypeInfo,
  MemoComponentsInfo, MemoGroupInfo, MemoTasksInfo: String): String;
var
  S: String;
begin
  S := MemoDirInfo + NewLine;
  if MemoTasksInfo <> '' then
    S := S + NewLine + MemoTasksInfo + NewLine;
  S := S + NewLine;
  if FileExists(ArtZipPath()) then
    S := S + FmtMessage(CustomMessage('ArtFound'), ['{#ArtZip}'])
  else
    S := S + FmtMessage(CustomMessage('ArtMissing'), ['{#ArtZip}']);
  S := S + NewLine + NewLine + CustomMessage('BridgeNote');
  Result := S;
end;
