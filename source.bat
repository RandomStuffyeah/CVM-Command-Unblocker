@echo off
title CollabVM Command Unblocker
echo Welcome to the CVM Command Unblocker, for when you can't get enough of the fucking admins...
echo !!! NOTE THAT THIS IS IN AN EXPERIMENTAL STATE, THAT MEANS THIS MAY NOT WORK! !!!
pause
echo.
echo Recovering file C:/Windows/system32/net.exe
SFC /ScanFile="C:\Windows\system32\net.exe"
echo Before using net, As far as I have seen, net is blocked by group policy on VM1, you'll have to go into gpedit and change it manually, otherwise, use WMIC to manage user accounts.
echo Recovering file C:/Windows/system32/shutdown.exe
SFC /ScanFile="C:\Windows\system32\shutdown.exe"
echo Recovering file C:/Windows/system32/mountvol.exe
SFC /ScanFile="C:\Windows\system32\mountvol.exe"
echo Recovering file C:/Windows/system32/logoff.exe
SFC /ScanFile="C:\Windows\system32\logoff.exe"
echo Recovering file C:/Windows/system32/net1.exe
SFC /ScanFile="C:\Windows\system32\net1.exe"
echo Recovering file C:/Windows/system32/diskpart.exe
SFC /ScanFile="C:\Windows\system32\diskpart.exe"
echo Recovering Local Users and Groups Manager
SFC /ScanFile="C:\Windows\system32\lusrmgr.msc"
echo Recovering Computer Management (just in case!)
SFC /ScanFile="C:\Windows\system32\compmgmt.msc"
echo Recovering Device Manager
SFC /ScanFile="C:\Windows\system32\devmgmt.msc"
echo Recovering C:/Windows/system32/reg.exe
SFC /ScanFile="C:\Windows\system32\reg.exe"
echo Resetting Group Policy to default...
echo This will use the tool secedit.
secedit /configure /cfg %windir%\inf\defltbase.inf /db defltbase.sdb /verbose
echo The process has completed.
echo Report any bugs to desktopgoose12@protonmail.com
