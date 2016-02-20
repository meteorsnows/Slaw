# Slaw
####Windows App Launcher for Steam (SLAW for ~~reverse~~ short)

**Grab Slaw.ini from [here](http://pastebin.com/p2kRJxZw) for an updated version**


Made with AutoHotKey, Slaw launches UWP/Store/Modern/Metro Apps using shell:AppsFolder and then continues running until it detects the app has closed. The advantages of this are a) it will display you as ingame on Steam and b) it prevents Big Picture from reading joystick input intended for the app.

#####Syntax

Slaw.exe searches Slaw.ini for the app's name (passed as a command line parameter). It requires the [App ID](http://winaero.com/blog/exclusive-how-to-start-a-modern-app-from-desktop-without-going-to-the-metro-start-screen/) and the full *.exe the app runs under (locatable via the task manager while the app is running). For example the following configuration will launch the Xbox app preinstalled on Windows 10 -

```ini
[Xbox]
App=Microsoft.XboxApp_8wekyb3d8bbwe!Microsoft.XboxApp
Exe=XboxApp.exe
```

![SteamSetup](https://github.com/krutomisi/Slaw/blob/master/SteamSetup.png)


#####Credits
Icon via [Symbolicons](http://symbolicons.com)
