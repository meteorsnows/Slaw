#Persistent
#SingleInstance Ignore
GameName=%1%

IniRead, WaitLaunch, Slaw.ini, Slaw, LaunchTime, 20000
IniRead, WaitRefresh, Slaw.ini, Slaw, RefreshTime, 5000

IniRead, GameExist, Slaw.ini, %GameName%
IniRead, GameApp, Slaw.ini, %GameName%, App, AppError
IniRead, GameExe, Slaw.ini, %GameName%, Exe, ExeError

Menu, Tray, Tip, Slaw: %GameName%
Menu, Tray, NoStandard
Menu, Tray, Add, Slaw, SlawAbout
Menu, Tray, Disable, Slaw
Menu, Tray, Add
Menu, Tray, Add, Info, SlawAbout
Menu, Tray, Add, Exit, SlawExit

Gui +OwnDialogs

IfNotExist Slaw.ini
{
	MsgBox, 16, Error, Slaw.ini Not Found, 15
	Goto SlawExit
}

if GameExist=
{
	MsgBox, 16, Error, %GameName% is not in Slaw.ini, 15
	Goto SlawExit
}

if GameName=
{
	MsgBox, 16, Error, No Launch Command Provided, 15
	Goto SlawExit
}

if GameName=Settings
{
	MsgBox, 16, Error, "Slaw" is not a valid App Name, 15
	Goto SlawExit
}

Run, explorer.exe shell:AppsFolder\%GameApp%
Sleep %WaitLaunch%

Loop {
	Process, Exist, %GameExe%
	If (ErrorLevel = 0)
		{
		Goto SlawExit
		}
	Else
		{
		Sleep %WaitRefresh%
		}
}

Return

SlawAbout:
MsgBox,,Slaw v161902,UWP App Launcher for Steam`nhttps://github.com/krutomisi/slaw`n`n%GameName%`n%GameApp%`n%GameExe%
Return

SlawExit:
Process, Close, %GameExe%
ExitApp
Return