@echo off
chcp 866
title Helper for Windows! ver 1.0a
cls
color F0
:: Права администратора
:-------------------------------------
REM  --> Проверка прав...
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> Если %errorlevel% равен 1, нужно запросить права админа
if '%errorlevel%' NEQ '0' (
	echo     __  __     __               
	echo    / / / /__  / /___  ___  _____
	echo   / /_/ / _ \/ / __ \/ _ \/ ___/
	echo  / __  /  __/ / /_/ /  __/ /    
	echo /_/ /_/\___/_/ .___/\___/_/     
	echo             /_/                 
	echo.
    echo Чтобы программа работала правильно нужны права администратора.
	echo Пожалуйста, в следующем окне нажмите "Да"
	echo.
	echo Для продолжения нажмите любую клавишу....
	pause >nul
    goto Adm
) else ( goto disclaimer )

:disclaimer
:: Генерация случайного кода
setlocal enabledelayedexpansion
set /a "code=%random%"

:: Дисклеймер
cls
echo     __  __     __               
echo    / / / /__  / /___  ___  _____
echo   / /_/ / _ \/ / __ \/ _ \/ ___/
echo  / __  /  __/ / /_/ /  __/ /    
echo /_/ /_/\___/_/ .___/\___/_/     
echo             /_/                 
echo.
echo ==========================================================
echo     Внимание! Эта программа выполняет удаление файлов!
echo     Она очищает временные файлы, кэш браузеров,
echo     старые обновления Windows и управляет автозагрузкой.
echo     Убедитесь, что вы не удаляете важные данные!
echo.
echo     Рекомендуется создать резервную копию важных файлов.
echo.
echo     Автор не несет ответственности за возможные потери данных,
echo     повреждения системы или другие непредвиденные последствия,
echo     которые могут возникнуть при использовании этой программы.
echo.
echo     Вы должны быть уверены в том, что понимаете, какие данные
echo     и процессы будут затронуты этой программой.
echo.
echo     Использование программы происходит на ваш собственный риск.
echo.
echo     Для продолжения нажмите любую клавишу. Для выхода - закройте программу.
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
echo Для использования программы в меню выбираете цифру и нажимаете Enter на Вашей клавиатуре.
echo.
echo Если Вы встретили ошибку, самовольное закрытие приложения, программа не выполняет нужную задачу, то
echo напишите разработчику программы на e-mail: slava.buran.99@mail.ru и опишите проблему
echo.
echo В будущем программа будет обновлятся, добавятся новые функции и исправятся большенство ошибок!
echo.
echo До следующего обновления программы, в котором добавят "Центр обновлений", пожалуйста, переодически открывайте
echo репозиторий на GitHub (открыть его сможете в меню программы). Если вы увидите, что версия отличается
echo от установленной (1.0а), значит нужно скачать и открыть HFW_Installer.bat! Он сам обновит ПО.
echo.
echo Приятного использования!
echo.
pause

:: Запрос кода
cls
echo     __  __     __               
echo    / / / /__  / /___  ___  _____
echo   / /_/ / _ \/ / __ \/ _ \/ ___/
echo  / __  /  __/ / /_/ /  __/ /    
echo /_/ /_/\___/_/ .___/\___/_/     
echo             /_/                 
echo.
echo ==========================================================
echo     Для продолжения работы необходимо ввести код доступа.
echo     Код доступа: %code%
echo     Этот код меняется каждый раз при запуске программы.
echo     Убедитесь, что вводите код точно.
echo.
echo     Введите код доступа ниже:
echo ==========================================================
echo.
set /p userCode=Код: 

if "%userCode%"=="%code%" (
    goto qe
) else (
    cls
	echo Неверный код. Программа завершает работу.
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
echo Вы подключены к интернету? (да / нет)
echo.

Set /p ethernet="Выбор: "
if not defined ethernet goto qe
if "%ethernet%"=="да" (goto ce)
if "%ethernet%"=="нет" (goto nc)
goto qe

:ce
title Загрузка...
cls
echo     __  __     __               
echo    / / / /__  / /___  ___  _____
echo   / /_/ / _ \/ / __ \/ _ \/ ___/
echo  / __  /  __/ / /_/ /  __/ /    
echo /_/ /_/\___/_/ .___/\___/_/     
echo             /_/                 	
echo.
echo Пожалуйста подождите, мы загружаем дополнительные файлы...
echo.cls
echo     __  __     __               
echo    / / / /__  / /___  ___  _____
echo   / /_/ / _ \/ / __ \/ _ \/ ___/
echo  / __  /  __/ / /_/ /  __/ /    
echo /_/ /_/\___/_/ .___/\___/_/     
echo             /_/                 	
echo.

:: Включаем задержку выполнения для работы с переменными внутри цикла
setlocal enabledelayedexpansion

:: Массив с различными словами
set words=assets дополняющие файлы ресурсы компоненты зависимости обновления данные модули настройки

:: Переменная для хранения использованных слов
set usedWords=

:: Цикл для вывода фраз с интервалом
for /L %%i in (1,1,10) do (
    cls
    echo     __  __     __               
    echo    / / / /__  / /___  ___  _____
    echo   / /_/ / _ \/ / __ \/ _ \/ ___/
    echo  / __  /  __/ / /_/ /  __/ /    
    echo /_/ /_/\___/_/ .___/\___/_/     
    echo             /_/                 	
    echo.

    :: Генерация случайного индекса
    :retry
    set /a randomIndex=!random! %% 10 + 1
    set counter=0
    set word=

    :: Поиск слова по случайному индексу
    for %%j in (%words%) do (
        set /a counter+=1
        if !counter! equ !randomIndex! (
            set word=%%j
        )
    )

    :: Проверка, было ли слово уже использовано
    if "!usedWords!" neq "" (
        echo !usedWords! | find "!word!" >nul
        if !errorlevel! equ 0 (
            goto retry
        )
    )

    :: Добавление слова в список использованных
    set usedWords=!usedWords! !word!

    echo Пожалуйста подождите, мы загружаем !word!...
    timeout /t 1 >nul
)

bitsadmin /transfer "GGYT" https://raw.githubusercontent.com/GGYT1/Helper_for_windows/refs/heads/master/art.txt %~dp0\files\art.txt >nul
timeout /t 4 /nobreak >nul
goto name

:nc
cls
type %~dp0\files\art.txt
echo.
echo Жаль... У вас не будет последних обновлений :(
echo.
echo.
echo.
echo Для продолжения нажмите любую клавишу...
pause >nul
goto name

:name
cls
title Helper for Windows!
cls
type %~dp0\files\art.txt
echo.
echo Как вас зовут?
echo.

Set /p name="Ваш имя: "
if "%name%"=="0" (goto menu)
if not defined name goto name
cls
goto MENU

:: Главное меню
:MENU
cls
type %~dp0\files\art.txt
echo                                    v 1.0a
echo.
echo ======================================
echo   Добро пожаловать в помощник, %name%!
echo ======================================
echo.
echo 1. Очистить временные файлы
echo 2. Очистить кэш браузеров (Chrome, Firefox, Edge, Opera и др.)
echo 3. Очистить старые обновления Windows
echo 4. Управлять программами в автозагрузке
echo 5. Выключить компьютер в заданное время
echo 6. Открыть репозиторий GitHub
echo 7. Выход из программы
echo.
echo Примечание: Выберите действие, введя номер от 1 до 6 и нажатием Enter
echo.
set /p choice=Выберите действие (1-6):

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
echo Очистка временных файлов...
echo Это удалит все временные файлы, которые могут занимать место на диске.
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
echo Очистка временных файлов...
timeout /t 3 /nobreak >nul
echo Корзина очищена...
timeout /t 2 /nobreak >nul
echo Операция завершена. Для продолжения нажмите Enter.
pause >nul
goto MENU

:BROWSER_CACHE
cls
type %~dp0\files\art.txt
echo.
echo Очистка кэша браузеров...
echo Это удалит кэш и временные файлы из браузеров, что может ускорить их работу.
echo.
pause

:: Функция для проверки и очистки папки
:ClearCache
if exist "%~1" (
    echo Очистка кэша: %~1
    del /f /s /q "%~1\*" >nul
)
goto :eof

:: Очистка кэша для каждого браузера
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
echo Очистка кэша браузеров завершена.
pause
goto MENU

:WINDOWS_UPDATE
cls
type %~dp0\files\art.txt
echo.
echo Очистка старых обновлений Windows...
echo Это удалит временные файлы обновлений, которые больше не нужны.
echo.
pause
:: Очистка временных файлов обновлений
del /f /s /q C:\Windows\SoftwareDistribution\Download\* >nul
del /f /s /q C:\Windows\SoftwareDistribution\DataStore\* >nul
cls
:: Удаление старых резервных копий обновлений (остается без WinSxS)
type %~dp0\files\art.txt
echo.
echo Старые обновления очищены.
pause
goto MENU

:AUTOSTART
cls
type %~dp0\files\art.txt
echo.
echo =========================
echo  Управление автозагрузкой
echo =========================
echo.
echo В этой секции вы можете:
echo 1. Просмотреть все программы, которые запускаются с системой.
echo 2. Удалить программу из автозагрузки.
echo 3. Вернуться в основное меню.
echo.
set /p choice=Выберите действие (1-3): 

if "%choice%"=="1" goto VIEW_AUTOSTART
if "%choice%"=="2" goto REMOVE_AUTOSTART
if "%choice%"=="3" goto MENU

:VIEW_AUTOSTART
cls
type %~dp0\files\art.txt
echo.
echo Программы в автозагрузке:
reg query HKCU\Software\Microsoft\Windows\CurrentVersion\Run
pause
goto AUTOSTART

:REMOVE_AUTOSTART
cls
type %~dp0\files\art.txt
echo.
echo Введите имя программы, которую хотите удалить из автозагрузки:
echo Например: "Skype" или "OneDrive".
set /p PROGRAM=Имя программы: 
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "%PROGRAM%" /f
echo Программа удалена из автозагрузки.
pause
goto AUTOSTART

:SHUTDOWN
cls
type %~dp0\files\art.txt
echo.
echo Введите время (в секундах) для автоматического выключения компьютера:
echo Например: 60 (для выключения через 1 минуту).
set /p TIME=Время (в секундах): 
echo Компьютер будет выключен через %TIME% секунд...
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