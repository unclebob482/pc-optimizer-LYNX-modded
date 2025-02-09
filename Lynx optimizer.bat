ÿþ&cls
@echo off
cls
setlocal EnableDelayedExpansion
mode 145,30
title Lynx Optimizer [v1.7 ReCoded BETA]
set local=1.7 BETA
if %errorlevel% neq 0 start "" /wait /I /min powershell -NoProfile -Command start -verb runas "'%~s0'" && exit /b
goto update
:admin
cls    
chcp 65001 >nul 2>&1
cd /d "%~dp0"
goto :update

:update
cls
setlocal EnableDelayedExpansion
set oldversion=%local%
if exist "%temp%\lynxupdater.bat" DEL /S /Q /F "%temp%\lynxupdater.bat" >nul 2>&1
curl -g -L -# -o "%temp%\lynxupdater.bat" "https://raw.githubusercontent.com/caxzy/LynxOptimizer/main/lynxversion" >nul 2>&1
call "%temp%\lynxupdater.bat"
if "%local%" gtr "%oldversion%" (
set string1="[95m                               _   __                __  __          __      __          ______                      __
set string2="[95m                              / | / /__ _      __   / / / /___  ____/ /___ _/ /____     / ____/___  __  ______  ____/ /
set string3="[95m                             /  |/ / _ \ | /| / /  / / / / __ \/ __  / __ `/ __/ _ \   / /_  / __ \/ / / / __ \/ __  / 
set string4="[95m                            / /|  /  __/ |/ |/ /  / /_/ / /_/ / /_/ / /_/ / /_/  __/  / __/ / /_/ / /_/ / / / / /_/ /  
set string5="[95m                           /_/ |_/\___/|__/|__/   \____/ .___/\__,_/\__,_/\__/\___/  /_/    \____/\__,_/_/ /_/\__,_/   
set string6="[95m                                                       /_/                                                        
set string7="[90m                                                          || Your old version: %oldversion% ||
set string8="[90m                                                            | Updated Version: %local% |
for /f "useback tokens=*" %%g in ('!string1!') do set string1=%%~g       
for /f "useback tokens=*" %%g in ('!string2!') do set string2=%%~g   
for /f "useback tokens=*" %%g in ('!string3!') do set string3=%%~g   
for /f "useback tokens=*" %%g in ('!string4!') do set string4=%%~g   
for /f "useback tokens=*" %%g in ('!string5!') do set string5=%%~g    
for /f "useback tokens=*" %%g in ('!string6!') do set string6=%%~g  
for /f "useback tokens=*" %%g in ('!string7!') do set string7=%%~g  
for /f "useback tokens=*" %%g in ('!string8!') do set string8=%%~g  
echo !string1!     
echo !string2!   
echo !string3! 
echo !string4!
echo !string5!  
echo !string6!
echo.
echo.
echo !string7!
echo.
echo !string8!
echo.                                  
echo                      [91m y - Update     
echo                      [91m n - Skip update 
echo.
echo.
echo.
	%SystemRoot%\System32\choice.exe /c:YN /n /m "%DEL%[95m                 >"                         
	set choice=!errorlevel!
	if !choice! == 1 (
		curl -L -o %0 "https://github.com/caxzy/LynxOptimizer/releases/latest/download/LynxOptimizer.bat" >nul 2>&1
		call %0
		exit /b 
	)
)
goto x

:x
cls
cd %temp%
echo x=msgbox("Please create a restore point before optimizing system." ,48, "!.!") >> x.vbs
x.vbs
del x.vbs
del lynxupdater.bat
goto menu

:menu
cls
title Lynx Optimizer [v1.7 ReCoded BETA] - Main Menu
echo.
echo       [0mUsername: [95m%USERNAME%[0m                                                                                                [0mVersion: [95m%oldversion%[0m
echo.
echo.
echo           [95m1.[0m[97m Full Windows Backup                             [95m2.[0m [97mBasic System Cleaner                             [95m3.[0m [97mBasic System Tweaks
echo       [90mCreate a full windows restore point[0m                       [90mRemove all junk from[0m                   [90m Basic Windows optimization for better 
echo                                                                  [90mfiles and registry[0m                              [90mfps and input delay[0m
echo.    
echo.
set string1="[90m                           __                        ______                  ____        __  _           _                     
set string2="[90m                          / /   __  ______  _  __   / ____/_______  ___     / __ \____  / /_(_)___ ___  (_)___  ___  _____
set string3="[90m                         / /   / / / / __ \| |/_/  / /_  / ___/ _ \/ _ \   / / / / __ \/ __/ / __ `__ \/ /_  / / _ \/ ___/
set string4="[90m                        / /___/ /_/ / / / />  <   / __/ / /  /  __/  __/  / /_/ / /_/ / /_/ / / / / / / / / /_/  __/ / 
set string5="[90m                       /_____/\__, /_/ /_/_/|_|  /_/   /_/   \___/\___/   \____/ .___/\__/_/_/ /_/ /_/_/ /___/\___/_/   
set string6="[90m                             /____/                                           /_/       
set string7="[97m                                                                discord.gg/JVEWR9CGk5   
for /f "useback tokens=*" %%g in ('!string1!') do set string1=%%~g    
for /f "useback tokens=*" %%g in ('!string2!') do set string2=%%~g  
for /f "useback tokens=*" %%g in ('!string3!') do set string3=%%~g  
for /f "useback tokens=*" %%g in ('!string4!') do set string4=%%~g
for /f "useback tokens=*" %%g in ('!string5!') do set string5=%%~g  
for /f "useback tokens=*" %%g in ('!string6!') do set string6=%%~g
for /f "useback tokens=*" %%g in ('!string7!') do set string7=%%~g
echo !string1!     
echo !string2!   
echo !string3! 
echo !string4!
echo !string5!
echo !string6!
echo.
echo !string7!
echo.
echo.
echo.
echo          [95m4.[0m [97m Wifi Booster                                     [95m5.[0m [97m Fps Booster                                   [95m6.[0m [97m Go to discord  
echo.
echo.
set /p choose="[95m                 >[0m "
if /i "%choose%"=="1" goto backup
if /i "%choose%"=="2" goto cleaner
if /i "%choose%"=="3" goto tweaksys
if /i "%choose%"=="4" goto WifiBooster
if /i "%choose%"=="5" goto Fpsbooster
if /i "%choose%"=="6" goto discord 
endlocal
goto error

:tweaksys
cls
Reg.exe add "HKCU\SOFTWARE\Microsoft\Games" /v "FpsAll" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Games" /v "FpsStatusGames" /t REG_DWORD /d "10" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Games" /v "FpsStatusGamesAll" /t REG_DWORD /d "4" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Games" /v "GameFluidity" /t REG_DWORD /d "1" /f
bcdedit /set Disabledynamictick yes >nul 2>&1
bcdedit /deletevalue useplatformclock  >nul 2>&1
bcdedit /set useplatformtick yes  >nul 2>&1
fsutil behavior set memoryusage 2 >nul 2>&1
fsutil behavior set mftzone 4 >nul 2>&1
fsutil behavior set Disablinglastaccess 1 >nul 2>&1
fsutil behavior set Disabledeletenotify 1 >nul 2>&1
fsutil behavior set encryptpagingfile 0 >nul 2>&1
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "BackgroundPriority" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Priority" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Scheduling Category" /t REG_SZ /d "Medium" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Latency Sensitive" /t REG_SZ /d "True" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "BackgroundPriority" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Latency Sensitive" /t REG_SZ /d "True" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ8Priority" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\PriorityControl" /v "IRQ8Priority" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ16Priority" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\PriorityControl" /v "IRQ16Priority" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "AutoEndTasks" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "HungAppTimeout" /t REG_SZ /d "1000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "WaitToKillAppTimeout" /t REG_SZ /d "1000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "LowLevelHooksTimeout" /t REG_SZ /d "1000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control" /v "WaitToKillServiceTimeout" /t REG_SZ /d "1000" /f
bcdedit /set configaccesspolicy Default
bcdedit /set MSI Default
bcdedit /set usephysicaldestination No
bcdedit /set usefirmwarepcisettings No
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "MonitorLatencyTolerance" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatency" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyTolerancePerfOverride" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceScreenOffIR" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceVSyncEnabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "RtlCapabilityCheckLatency" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyActivelyUsed" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleLongTime" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleMonitorOff" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleNoContext" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleShortTime" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleVeryLongTime" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle0" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle0MonitorOff" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle1" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle1MonitorOff" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceMemory" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceNoContext" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceNoContextMonitorOff" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceOther" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceTimerPeriod" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultMemoryRefreshLatencyToleranceActivelyUsed" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultMemoryRefreshLatencyToleranceMonitorOff" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultMemoryRefreshLatencyToleranceNoContext" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "Latency" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MaxIAverageGraphicsLatencyInOneBucket" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MiracastPerfTrackGraphicsLatency" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "TransitionLatency" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "4" /f 
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "3" /f
echo [95mDone![0m
timeout 3 >nul
goto menu

:cleaner
cls
echo [95mCleaning temporary files...[0m
timeout 2 >nul
del /s /f /q %SYSTEMDRIVE%\windows\temp\*.* 
rd /s /q %SYSTEMDRIVE%\windows\temp 
md c:\windows\temp
del /s /f /q %SYSTEMDRIVE%\WINDOWS\Prefetch 
del /s /f /q %temp%\*.* 
rd /s /q %temp%
cls
echo [95mSuccesfull deleted temporary files![0m
timeout 1 >nul
cls
timeout 2 >nul
echo [95mCleaning logs...[0m
md %temp%
del /q /f /s %SYSTEMDRIVE%\Temp\*.* 
del /q /f /s %WINDIR%\Prefetch\*.* 
del /q /f /s %SYSTEMDRIVE%\*.log 
del /q /f /s %SYSTEMDRIVE%\*.bak 
del /q /f /s %SYSTEMDRIVE%\*.gid 
del /s /f /q %SYSTEMDRIVE%\AMD\*.*
del /s /f /q %SYSTEMDRIVE%\NVIDIA\*.*
del /s /f /q %SYSTEMDRIVE%\INTEL\*.*
cls
echo [95mSuccesfull cleaned logs![0m
timeout 1 >nul
cls
echo [95mCleaning temporary register files...[0m
timeout 2 >nul
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Applets\Regedit" /va /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Applets\Regedit" /va /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Applets\Regedit\Favorites" /va /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Applets\Regedit\Favorites" /va /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedPidlMRU" /va /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedPidlMRULegacy" /va /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Applets\Paint\Recent File List" /va /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Applets\Paint\Recent File List" /va /f
reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Applets\Wordpad\Recent File List" /va /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Map Network Drive MRU" /va /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Map Network Drive MRU" /va /f
reg delete "HKCU\Software\Microsoft\Search Assistant\ACMru" /va /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs" /va /f
reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs" /va /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSaveMRU" /va /f
reg delete "HKCU\Software\Microsoft\MediaPlayer\Player\RecentFileList" /va /f
reg delete "HKCU\Software\Microsoft\MediaPlayer\Player\RecentURLList" /va /f
reg delete "HKLM\SOFTWARE\Microsoft\MediaPlayer\Player\RecentFileList" /va /f
reg delete "HKLM\SOFTWARE\Microsoft\MediaPlayer\Player\RecentURLList" /va /f
reg delete "HKCU\Software\Microsoft\Direct3D\MostRecentApplication" /va /f
reg delete "HKLM\SOFTWARE\Microsoft\Direct3D\MostRecentApplication" /va /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" /va /f
reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths" /va /f
timeout 1 >nul
echo [95mSucessfull Cleaned! Returning to menu...[0m
ipconfig /flushdns
cls
echo [95mDone![0m
timeout 3 >nul
goto menu

:backup
cls
SystemPropertiesProtection
goto menu

:error
cls
echo [95mMissclick detected - returning to menu...
timeout 5 >nul
goto menu

:WifiBooster
@echo off
chcp 65001
netsh int ip reset c:\restlog.txt
netsh int ip reset d:\restlog.txt
cls
del /s /q c:\windows\recent\*.*
rd /s /q C:\$recycle.bin\*.*
del /f /q c:\windows\temp\*.*
rd /s /q c:\windows\temp
md c:\windows\temp
del /s /f /q C:\WINDOWS\Prefetch
del /s /f /q %temp%\*.*
rd /s /q %temp%
md %temp%
rd /s /q c:\windows\tempor~1
rd /s /q c:\windows\tmp
rd /s /q c:\windows\ff*.tmp
rd /s /q c:\windows\history
rd /s /q c:\windows\cookies
rd /s /q c:\windows\recent
rd /s /q c:\windows\spool\printers
del c:\WIN386.SWP
rd /s /q C:\Windows\SoftwareDistribution
md C:\Windows\SoftwareDistribution
cls
powercfg/hibernate off
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
cls
bcdedit /set useplatformclock false
netsh int tcp set heuristics disabled
netsh int tcp set global rss=enabled
netsh int tcp set global rsc=disabled
netsh int tcp set global autotuninglevel=highlyrestricted
netsh int tcp set global timestamps=disabled
netsh int tcp set global dca=enabled
netsh int tcp set global netdma=enabled
netsh int tcp set global ecncapability=disabled
netsh int tcp set global nonsackrttresiliency=disabled
netsh int ip set global taskoffload=disabled
netsh int tcp set security profiles=disabled
netsh int tcp set supplemental internet congestionprovider=ctcp
netsh int ip set global icmpredirects=disabled
netsh int ip set global neighborcachelimit=4096
netsh int ip set global multicastforwarding=disabled
netsh int ip delete arpcache
netsh int 6to4 set state disabled
netsh int tcp set security mpp=disabled
netsh int isatap set state disable
netsh winsock reset
cls
ipconfig/release
ipconfig/renew
ipconfig/flushdns
cls
echo Please reboot
pause
timeout 3 >nul
goto menu

:Fpsbooster
@echo off
chcp 65001
bcdedit >>nul
if %errorlevel% == 1 goto :NoAdmin
cls
goto EventlogDel

:EventlogDel
cls
for /F " tokens=*" %%G in ('wevtutil.exe el') DO (call :Do_clear "%%G")
cls
goto JunkFileDel

:Do_clear
echo clearing %1
wevtutil.exe cl %1
goto :eof

:JunkFileDel
cls
del /s /q c:\windows\recent\*.*
rd /s /q C:\$recycle.bin\*.*
del /f /q c:\windows\temp\*.*
rd /s /q c:\windows\temp
md c:\windows\temp
del /s /f /q C:\WINDOWS\Prefetch
del /s /f /q %temp%\*.*
rd /s /q %temp%
md %temp%
rd /s /q c:\windows\tempor~1
rd /s /q c:\windows\tmp
rd /s /q c:\windows\ff*.tmp
rd /s /q c:\windows\history
rd /s /q c:\windows\cookies
rd /s /q c:\windows\recent
rd /s /q c:\windows\spool\printers
del c:\WIN386.SWP
rd /s /q C:\Windows\SoftwareDistribution
md C:\Windows\SoftwareDistribution
goto three

:three
cls
powercfg/hibernate off
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
bcdedit /set useplatformclock false
bcdedit /set disabledynamictick Yes
goto four

:four
cls
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /Disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /Disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /Disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Uploader" /Disable
schtasks /Change /TN "Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /Disable
schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyMonitor" /Disable
schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyRefresh" /Disable
schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyUpload" /Disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\AitAgent" /Disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\ProgramDataUpdater" /Disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\StartupAppTask" /Disable
schtasks /Change /TN "Microsoft\Windows\Autochk\Proxy" /Disable
schtasks /change /TN "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /Disable
schtasks /Change /TN "Microsoft\Windows\AppID\SmartScreenSpecific" /Disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /Disable
schtasks /Change /TN "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /Disable
schtasks /Change /TN "Microsoft\Windows\NetTrace\GatherNetworkInfo" /Disable
schtasks /Change /TN "Microsoft\Windows\PI\Sqm-Tasks" /Disable
schtasks /Change /TN "Microsoft\Windows\FileHistory\File History (maintenance mode)" /Disable
schtasks /Change /TN "Microsoft\Windows\DiskFootprint\Diagnostics" /Disable
schtasks /Change /TN "Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /Disable
schtasks /Change /TN "Microsoft\Windows\Windows Error Reporting\QueueReporting" /Disable
goto bcdedit

:bcdedit 
bcdedit /set disabledynamictick yes
taskkill /f /im explorer.exe
start explorer.exe
exit
goto end

:discord
start https://discord.com/invite/JVEWR9CGk5

:end
pause
timeout 3 >nul
goto menu
