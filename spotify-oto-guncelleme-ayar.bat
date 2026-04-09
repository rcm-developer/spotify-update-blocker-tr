@echo off
chcp 65001 >nul
title Spotify Update Manager - Created By Recep
color 0b

:: ==========================================
:: YÖNETİCİ (UAC) İZNİ KONTROLÜ (MODERN YÖNTEM)
:: ==========================================
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Yönetici izinleri isteniyor... Lütfen UAC penceresinde Evet'e basın.
    powershell -Command "Start-Process cmd -ArgumentList '/c %~dpnx0' -Verb RunAs"
    exit /b
)

cd /d "%~dp0"

:: ==========================================
:: ANA MENÜ VE ASCII GUI
:: ==========================================
:menu
cls
echo.
echo  ===========================================================
echo                                                   recepc.com
echo   ___ ___  ___  _____  _  ___ _   _
echo  / __^| _ \/ _ \^|_   _^|^| ^|^| __^| ^| ^| ^|
echo  \__ \  _/ (_) ^| ^| ^|  ^| ^|^| _^|^| ^|_^| ^|
echo  ^|___/_^|  \___/  ^|_^|  ^|_^|^|_^|  \__, ^|
echo                               ^|___/
echo.
echo              SPOTIFY UPDATE MANAGER
echo                  Created By Recep
echo  ===========================================================
echo.
echo    [1] Spotify Güncellemelerini Kapat (Block)
echo    [2] Spotify Güncellemelerini Aç (Unblock)
echo    [3] Çıkış
echo.
echo  ===========================================================
set /p secim="Seçiminiz (1/2/3): "

if "%secim%"=="1" goto kapat
if "%secim%"=="2" goto ac
if "%secim%"=="3" goto exit

goto menu

:: ==========================================
:: 1. GÜNCELLEMELERİ KAPATMA MODÜLÜ
:: ==========================================
:kapat
cls
echo.
echo  [+] Spotify güncellemeleri engelleniyor...
echo.

rd /s /q "%localappdata%\Spotify\Update" 2>nul
del /f /q "%localappdata%\Spotify\Update" 2>nul
mkdir "%localappdata%\Spotify\Update"

icacls "%localappdata%\Spotify\Update" /deny "%username%":D
icacls "%localappdata%\Spotify\Update" /deny "%username%":R

echo.
echo  [!] Başarılı: Spotify güncellemeleri engellendi!
echo      İşlem tamamlandı. Artık Spotify otomatik olarak güncelleme almayacak.
echo.
pause
goto menu

:: ==========================================
:: 2. GÜNCELLEMELERİ GERİ AÇMA MODÜLÜ
:: ==========================================
:ac
cls
echo.
echo  [+] Spotify güncellemeleri tekrar aktif ediliyor...
echo.

icacls "%localappdata%\Spotify\Update" /remove:d "%username%" /T /C /Q
icacls "%localappdata%\Spotify\Update" /grant "%username%":F /T /C /Q

rd /s /q "%localappdata%\Spotify\Update" 2>nul
del /f /q "%localappdata%\Spotify\Update" 2>nul

echo.
echo  [!] Başarılı: Güncellemeler geri açıldı!
echo      Kısıtlamalar kaldırıldı ve Update klasörü silindi.
echo.
pause
goto menu

:: ==========================================
:: ÇIKIŞ
:: ==========================================
:exit
exit