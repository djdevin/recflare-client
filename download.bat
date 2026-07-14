@echo off
setlocal

set "STEAM_USERNAME="
set /p STEAM_USERNAME=Enter your Steam username:
if "%STEAM_USERNAME%"=="" (
    echo No username entered - stopping.
    exit /b 1
)

echo === Installing DepotDownloader ===
curl -f -L -o DepotDownloader.zip https://github.com/SteamRE/DepotDownloader/releases/download/DepotDownloader_3.4.0/DepotDownloader-windows-x64.zip || goto :error
if not exist "DepotDownloader" mkdir "DepotDownloader"
tar -xf DepotDownloader.zip -C DepotDownloader || goto :error
del DepotDownloader.zip

echo === Downloading Rec Room depot via DepotDownloader (will prompt for Steam password) ===
DepotDownloader\DepotDownloader.exe -app 471710 -depot 471711 -manifest 7859140924515540835 -dir . -username "%STEAM_USERNAME%" || goto :error

echo === Downloading BepInEx and extracting to this directory ===
curl -f -L -o BepInEx.zip https://github.com/BepInEx/BepInEx/releases/download/v6.0.0-pre.2/BepInEx-Unity.IL2CPP-win-x64-6.0.0-pre.2.zip || goto :error
tar -xf BepInEx.zip -C . || goto :error
del BepInEx.zip

echo === Downloading RecNetPlugin.dll into BepInEx\plugins ===
if not exist "BepInEx\plugins" mkdir "BepInEx\plugins"
curl -f -L -o "BepInEx\plugins\RecNetPlugin.dll" https://github.com/djdevin/recnet-plugin/releases/download/0.0.3/RecNetPlugin.dll || goto :error

echo === Extracting bundled global-metadata into RecRoom_Data\il2cpp_data\Metadata ===
tar -xf "RecRoom_Data\il2cpp_data\Metadata\global-metadata.zip" -C "RecRoom_Data\il2cpp_data\Metadata" || goto :error

echo === Done ===
exit /b 0

:error
echo.
echo *** FAILED with error code %errorlevel% - stopping. ***
exit /b %errorlevel%
