# RecFlare client

Autoamtic setup of the game client to connect to the testing [RecFlare](https://github.com/djdevin/recflare) instance.

## Download

Check out this repository or extract the ZIP: https://github.com/djdevin/recflare-client/archive/refs/heads/master.zip

## Installing

1. Run `download.bat`. The script will ask whether you have Rec Room in your Steam library: if you do, it downloads the game client from Steam (DepotDownloader); if not, it syncs the game files from a mirror instead. Either way it then applies patches and configuration.
2. Run `RecRoomScreen.bat` or `RecRoomVR.bat`

## Custom server

Fork this project and change `/BepInEx/config/net.rec.plugin.cfg` to your own instance.
