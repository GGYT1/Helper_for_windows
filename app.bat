@echo off
chcp 866
title Helper for Windows! ver 1.0a
cls
color F0
:: �ࠢ� �����������
:-------------------------------------
REM  --> �஢�ઠ �ࠢ...
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> �᫨ %errorlevel% ࠢ�� 1, �㦭� ������� �ࠢ� ������
if '%errorlevel%' NEQ '0' (
	echo     __  __     __               
	echo    / / / /__  / /___  ___  _____
	echo   / /_/ / _ \/ / __ \/ _ \/ ___/
	echo  / __  /  __/ / /_/ /  __/ /    
	echo /_/ /_/\___/_/ .___/\___/_/     
	echo             /_/                 
	echo.
    echo �⮡� �ணࠬ�� ࠡ�⠫� �ࠢ��쭮 �㦭� �ࠢ� �����������.
	echo ��������, � ᫥���饬 ���� ������ "��"
	echo.
	echo ��� �த������� ������ ���� �������....
	pause >nul
    goto Adm
) else ( goto disclaimer )

:disclaimer
:: ������� ��砩���� ����
setlocal enabledelayedexpansion
set /a "code=%random%"

:: ��᪫�����
cls
echo     __  __     __               
echo    / / / /__  / /___  ___  _____
echo   / /_/ / _ \/ / __ \/ _ \/ ___/
echo  / __  /  __/ / /_/ /  __/ /    
echo /_/ /_/\___/_/ .___/\___/_/     
echo             /_/                 
echo.
echo ==========================================================
echo     ��������! �� �ணࠬ�� �믮���� 㤠����� 䠩���!
echo     ��� ��頥� �६���� 䠩��, ��� ��㧥஢,
echo     ���� ���������� Windows � �ࠢ��� ��⮧���㧪��.
echo     ��������, �� �� �� 㤠��� ����� �����!
echo.
echo     ������������ ᮧ���� १�ࢭ�� ����� ������ 䠩���.
echo.
echo     ���� �� ���� �⢥��⢥����� �� �������� ���� ������,
echo     ���०����� ��⥬� ��� ��㣨� ���।������� ��᫥��⢨�,
echo     ����� ����� ���������� �� �ᯮ�짮����� �⮩ �ணࠬ��.
echo.
echo     �� ������ ���� 㢥७� � ⮬, �� ��������, ����� �����
echo     � ������ ���� ���஭��� �⮩ �ணࠬ���.
echo.
echo     �ᯮ�짮����� �ணࠬ�� �ந�室�� �� ��� ᮡ�⢥��� ��.
echo.
echo     ��� �த������� ������ ���� �������. ��� ��室� - ���ன� �ணࠬ��.
echo ==========================================================
pause >nul

cls
echo     __  __     __               
echo    / / / /__  / /___  ___  _____
echo   / /_/ / _ \/ / __ \/ _ \/ ___/
echo  / __  /  __/ / /_/ /  __/ /    
echo /_/ /_/\___/_/ .___/\___/_/     
echo             /_/                 
echo.
echo ��� �ᯮ�짮����� �ணࠬ�� � ���� �롨ࠥ� ���� � �������� Enter �� ��襩 ���������.
echo.
echo �᫨ �� ����⨫� �訡��, ᠬ����쭮� �����⨥ �ਫ������, �ணࠬ�� �� �믮���� �㦭�� ������, �
echo ������ ࠧࠡ��稪� �ணࠬ�� �� e-mail: slava.buran.99@mail.ru � ����� �஡����
echo.
echo � ���饬 �ணࠬ�� �㤥� ����������, ��������� ���� �㭪樨 � ��ࠢ���� ����襭�⢮ �訡��!
echo.
echo �� ᫥���饣� ���������� �ணࠬ��, � ���஬ ������� "����� ����������", ��������, ��८���᪨ ���뢠��
echo ९����਩ �� GitHub (������ ��� ᬮ��� � ���� �ணࠬ��). �᫨ �� 㢨���, �� ����� �⫨砥���
echo �� ��⠭�������� (1.0�), ����� �㦭� ᪠��� � ������ HFW_Installer.bat! �� ᠬ ������� ��.
echo.
echo ���⭮�� �ᯮ�짮�����!
echo.
pause

:: ����� ����
cls
echo     __  __     __               
echo    / / / /__  / /___  ___  _____
echo   / /_/ / _ \/ / __ \/ _ \/ ___/
echo  / __  /  __/ / /_/ /  __/ /    
echo /_/ /_/\___/_/ .___/\___/_/     
echo             /_/                 
echo.
echo ==========================================================
echo     ��� �த������� ࠡ��� ����室��� ����� ��� ����㯠.
echo     ��� ����㯠: %code%
echo     ��� ��� ������� ����� ࠧ �� ����᪥ �ணࠬ��.
echo     ��������, �� ������ ��� �筮.
echo.
echo     ������ ��� ����㯠 ����:
echo ==========================================================
echo.
set /p userCode=���: 

if "%userCode%"=="%code%" (
    goto qe
) else (
    cls
	echo ������ ���. �ணࠬ�� �����蠥� ࠡ���.
    timeout /t 5 /nobreak >nul
    exit
)

:qe
cls
echo     __  __     __               
echo    / / / /__  / /___  ___  _____
echo   / /_/ / _ \/ / __ \/ _ \/ ___/
echo  / __  /  __/ / /_/ /  __/ /    
echo /_/ /_/\___/_/ .___/\___/_/     
echo             /_/                 
echo.
echo �� ������祭� � ���୥��? (�� / ���)
echo.

Set /p ethernet="�롮�: "
if not defined ethernet goto qe
if "%ethernet%"=="��" (goto ce)
if "%ethernet%"=="���" (goto nc)
goto qe

:ce
title ����㧪�...
cls
echo     __  __     __               
echo    / / / /__  / /___  ___  _____
echo   / /_/ / _ \/ / __ \/ _ \/ ___/
echo  / __  /  __/ / /_/ /  __/ /    
echo /_/ /_/\___/_/ .___/\___/_/     
echo             /_/                 	
echo.
echo �������� ��������, �� ����㦠�� �������⥫�� 䠩��...
echo.cls
echo     __  __     __               
echo    / / / /__  / /___  ___  _____
echo   / /_/ / _ \/ / __ \/ _ \/ ___/
echo  / __  /  __/ / /_/ /  __/ /    
echo /_/ /_/\___/_/ .___/\___/_/     
echo             /_/                 	
echo.

:: ����砥� ����প� �믮������ ��� ࠡ��� � ��६���묨 ����� 横��
setlocal enabledelayedexpansion

:: ���ᨢ � ࠧ���묨 ᫮����
set words=assets ��������騥 䠩�� ������ ���������� ����ᨬ��� ���������� ����� ���㫨 ����ன��

:: ��६����� ��� �࠭���� �ᯮ�짮������ ᫮�
set usedWords=

:: ���� ��� �뢮�� �ࠧ � ���ࢠ���
for /L %%i in (1,1,10) do (
    cls
    echo     __  __     __               
    echo    / / / /__  / /___  ___  _____
    echo   / /_/ / _ \/ / __ \/ _ \/ ___/
    echo  / __  /  __/ / /_/ /  __/ /    
    echo /_/ /_/\___/_/ .___/\___/_/     
    echo             /_/                 	
    echo.

    :: ������� ��砩���� ������
    :retry
    set /a randomIndex=!random! %% 10 + 1
    set counter=0
    set word=

    :: ���� ᫮�� �� ��砩���� �������
    for %%j in (%words%) do (
        set /a counter+=1
        if !counter! equ !randomIndex! (
            set word=%%j
        )
    )

    :: �஢�ઠ, �뫮 �� ᫮�� 㦥 �ᯮ�짮����
    if "!usedWords!" neq "" (
        echo !usedWords! | find "!word!" >nul
        if !errorlevel! equ 0 (
            goto retry
        )
    )

    :: ���������� ᫮�� � ᯨ᮪ �ᯮ�짮������
    set usedWords=!usedWords! !word!

    echo �������� ��������, �� ����㦠�� !word!...
    timeout /t 1 >nul
)

bitsadmin /transfer "GGYT" https://raw.githubusercontent.com/GGYT1/Helper_for_windows/refs/heads/master/art.txt %~dp0\files\art.txt >nul
timeout /t 4 /nobreak >nul
goto name

:nc
cls
type %~dp0\files\art.txt
echo.
echo ����... � ��� �� �㤥� ��᫥���� ���������� :(
echo.
echo.
echo.
echo ��� �த������� ������ ���� �������...
pause >nul
goto name

:name
cls
title Helper for Windows!
cls
type %~dp0\files\art.txt
echo.
echo ��� ��� �����?
echo.

Set /p name="��� ���: "
if "%name%"=="0" (goto menu)
if not defined name goto name
cls
goto MENU

:: ������� ����
:MENU
cls
type %~dp0\files\art.txt
echo                                    v 1.0a
echo.
echo ======================================
echo   ���� ���������� � ����魨�, %name%!
echo ======================================
echo.
echo 1. ������ �६���� 䠩��
echo 2. ������ ��� ��㧥஢ (Chrome, Firefox, Edge, Opera � ��.)
echo 3. ������ ���� ���������� Windows
echo 4. ��ࠢ���� �ணࠬ���� � ��⮧���㧪�
echo 5. �몫���� �������� � �������� �६�
echo 6. ������ ९����਩ GitHub
echo 7. ��室 �� �ணࠬ��
echo.
echo �ਬ�砭��: �롥�� ����⢨�, ����� ����� �� 1 �� 6 � ����⨥� Enter
echo.
set /p choice=�롥�� ����⢨� (1-6):

if "%choice%"=="1" goto CLEANUP
if "%choice%"=="2" goto BROWSER_CACHE
if "%choice%"=="3" goto WINDOWS_UPDATE
if "%choice%"=="4" goto AUTOSTART
if "%choice%"=="5" goto SHUTDOWN
if "%choice%"=="6" start %~dp0\git.url && goto MENU
if "%choice%"=="7" goto exit
goto menu

:CLEANUP
cls
type %~dp0\files\art.txt
echo.
echo ���⪠ �६����� 䠩���...
echo �� 㤠��� �� �६���� 䠩��, ����� ����� �������� ���� �� ��᪥.
echo.
pause
echo.
del /f /s /q %temp%\* >nul
cls
del /f /s /q C:\Windows\Temp\* >nul
cls
echo y | del /f /q %systemdrive%\$Recycle.Bin\* >nul
cls
type %~dp0\files\art.txt
echo ���⪠ �६����� 䠩���...
timeout /t 3 /nobreak >nul
echo ��২�� ��饭�...
timeout /t 2 /nobreak >nul
echo ������ �����襭�. ��� �த������� ������ Enter.
pause >nul
goto MENU

:BROWSER_CACHE
cls
type %~dp0\files\art.txt
echo.
echo ���⪠ ��� ��㧥஢...
echo �� 㤠��� ��� � �६���� 䠩�� �� ��㧥஢, �� ����� �᪮��� �� ࠡ���.
echo.
pause

:: �㭪�� ��� �஢�ન � ���⪨ �����
:ClearCache
if exist "%~1" (
    echo ���⪠ ���: %~1
    del /f /s /q "%~1\*" >nul
)
goto :eof

:: ���⪠ ��� ��� ������� ��㧥�
call :ClearCache "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cache"
call :ClearCache "%LOCALAPPDATA%\Google\Chrome\User Data\Profile*\Cache"
call :ClearCache "%APPDATA%\Mozilla\Firefox\Profiles\*\cache2"
call :ClearCache "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\Cache"
call :ClearCache "%LOCALAPPDATA%\Microsoft\Edge\User Data\Profile*\Cache"
call :ClearCache "%APPDATA%\Opera Software\Opera Stable\Cache"
call :ClearCache "%APPDATA%\Opera Software\Opera GX Stable\Cache"
call :ClearCache "%APPDATA%\Apple Computer\Safari\Cache"
call :ClearCache "%LOCALAPPDATA%\Yandex\YandexBrowser\User Data\Default\Cache"
call :ClearCache "%LOCALAPPDATA%\Yandex\YandexBrowser\User Data\Profile*\Cache"
call :ClearCache "%LOCALAPPDATA%\BraveSoftware\Brave-Browser\User Data\Default\Cache"
call :ClearCache "%LOCALAPPDATA%\BraveSoftware\Brave-Browser\User Data\Profile*\Cache"
call :ClearCache "%LOCALAPPDATA%\Vivaldi\User Data\Default\Cache"
call :ClearCache "%LOCALAPPDATA%\Vivaldi\User Data\Profile*\Cache"
call :ClearCache "%LOCALAPPDATA%\TorBrowser\Data\Browser\profile.default\cache2"
call :ClearCache "%LOCALAPPDATA%\Epic Privacy Browser\User Data\Default\Cache"
call :ClearCache "%LOCALAPPDATA%\Epic Privacy Browser\User Data\Profile*\Cache"
call :ClearCache "%LOCALAPPDATA%\Comodo\Dragon\User Data\Default\Cache"
call :ClearCache "%LOCALAPPDATA%\Comodo\Dragon\User Data\Profile*\Cache"
call :ClearCache "%LOCALAPPDATA%\CCleaner Browser\User Data\Default\Cache"
call :ClearCache "%LOCALAPPDATA%\CCleaner Browser\User Data\Profile*\Cache"
call :ClearCache "%LOCALAPPDATA%\Slimjet\User Data\Default\Cache"
call :ClearCache "%LOCALAPPDATA%\Slimjet\User Data\Profile*\Cache"
call :ClearCache "%LOCALAPPDATA%\Maxthon3\Cache"
call :ClearCache "%LOCALAPPDATA%\UCBrowser\User Data\Default\Cache"
call :ClearCache "%LOCALAPPDATA%\UCBrowser\User Data\Profile*\Cache"
call :ClearCache "%LOCALAPPDATA%\K-Meleon\Profiles\*\Cache"
call :ClearCache "%LOCALAPPDATA%\Waterfox\Profiles\*\cache2"
call :ClearCache "%LOCALAPPDATA%\Pale Moon\Profiles\*\cache2"
call :ClearCache "%LOCALAPPDATA%\SeaMonkey\Profiles\*\cache2"
call :ClearCache "%LOCALAPPDATA%\SlimBrowser\User Data\Default\Cache"
call :ClearCache "%LOCALAPPDATA%\SlimBrowser\User Data\Profile*\Cache"
call :ClearCache "%LOCALAPPDATA%\CocCoc\Browser\User Data\Default\Cache"
call :ClearCache "%LOCALAPPDATA%\CocCoc\Browser\User Data\Profile*\Cache"
call :ClearCache "%LOCALAPPDATA%\360Chrome\Chrome\User Data\Default\Cache"
call :ClearCache "%LOCALAPPDATA%\360Chrome\Chrome\User Data\Profile*\Cache"
call :ClearCache "%LOCALAPPDATA%\Iridium\User Data\Default\Cache"
call :ClearCache "%LOCALAPPDATA%\Iridium\User Data\Profile*\Cache"
call :ClearCache "%LOCALAPPDATA%\Amigo\User Data\Default\Cache"
call :ClearCache "%LOCALAPPDATA%\Amigo\User Data\Profile*\Cache"
call :ClearCache "%LOCALAPPDATA%\Orbitum\User Data\Default\Cache"
call :ClearCache "%LOCALAPPDATA%\Orbitum\User Data\Profile*\Cache"
call :ClearCache "%LOCALAPPDATA%\Nichrome\User Data\Default\Cache"
call :ClearCache "%LOCALAPPDATA%\Nichrome\User Data\Profile*\Cache"

cls
type %~dp0\files\art.txt
echo.
echo ���⪠ ��� ��㧥஢ �����襭�.
pause
goto MENU

:WINDOWS_UPDATE
cls
type %~dp0\files\art.txt
echo.
echo ���⪠ ����� ���������� Windows...
echo �� 㤠��� �६���� 䠩�� ����������, ����� ����� �� �㦭�.
echo.
pause
:: ���⪠ �६����� 䠩��� ����������
del /f /s /q C:\Windows\SoftwareDistribution\Download\* >nul
del /f /s /q C:\Windows\SoftwareDistribution\DataStore\* >nul
cls
:: �������� ����� १�ࢭ�� ����� ���������� (��⠥��� ��� WinSxS)
type %~dp0\files\art.txt
echo.
echo ���� ���������� ��饭�.
pause
goto MENU

:AUTOSTART
cls
type %~dp0\files\art.txt
echo.
echo =========================
echo  ��ࠢ����� ��⮧���㧪��
echo =========================
echo.
echo � �⮩ ᥪ樨 �� �����:
echo 1. ��ᬮ���� �� �ணࠬ��, ����� ����᪠���� � ��⥬��.
echo 2. ������� �ணࠬ�� �� ��⮧���㧪�.
echo 3. �������� � �᭮���� ����.
echo.
set /p choice=�롥�� ����⢨� (1-3): 

if "%choice%"=="1" goto VIEW_AUTOSTART
if "%choice%"=="2" goto REMOVE_AUTOSTART
if "%choice%"=="3" goto MENU

:VIEW_AUTOSTART
cls
type %~dp0\files\art.txt
echo.
echo �ணࠬ�� � ��⮧���㧪�:
reg query HKCU\Software\Microsoft\Windows\CurrentVersion\Run
pause
goto AUTOSTART

:REMOVE_AUTOSTART
cls
type %~dp0\files\art.txt
echo.
echo ������ ��� �ணࠬ��, ������ ��� 㤠���� �� ��⮧���㧪�:
echo ���ਬ��: "Skype" ��� "OneDrive".
set /p PROGRAM=��� �ணࠬ��: 
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "%PROGRAM%" /f
echo �ணࠬ�� 㤠���� �� ��⮧���㧪�.
pause
goto AUTOSTART

:SHUTDOWN
cls
type %~dp0\files\art.txt
echo.
echo ������ �६� (� ᥪ㭤��) ��� ��⮬���᪮�� �몫�祭�� ��������:
echo ���ਬ��: 60 (��� �몫�祭�� �१ 1 ������).
set /p TIME=�६� (� ᥪ㭤��): 
echo �������� �㤥� �몫�祭 �१ %TIME% ᥪ㭤...
shutdown /s /f /t %TIME%
pause
goto MENU


:Adm
reg query "HKU\S-1-5-19\Environment" >nul 2>&1
if not %errorlevel% EQU 0 (
    cls
    powershell.exe -windowstyle hidden -noprofile "Start-Process '%~dpnx0' -Verb RunAs"
    exit 
)