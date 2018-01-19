@REM Use this script for open folder with REPLAY

@ECHO OFF

REM Generate VBScript for open "My Vedios" folder
SET SCRIPT_FILE=%TEMP%\ToReplay.vbs
ECHO Const MY_VEDIOS = ^&HE^&> %SCRIPT_FILE%
ECHO Set objShell = CreateObject("Shell.Application")>> %SCRIPT_FILE%
ECHO WoWP_REP = objShell.Namespace(MY_VEDIOS).Self.Path + "\World of Warplanes">> %SCRIPT_FILE%

ECHO Set oFSO = CreateObject("Scripting.FileSystemObject")>> %SCRIPT_FILE%
ECHO If Not oFSO.FolderExists(WoWP_REP) Then>> %SCRIPT_FILE%
ECHO   oFSO.CreateFolder WoWP_REP>> %SCRIPT_FILE%
ECHO End If>> %SCRIPT_FILE%

ECHO objShell.Open(WoWP_REP) >> %SCRIPT_FILE%
cscript %SCRIPT_FILE% > NUL
