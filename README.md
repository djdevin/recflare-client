# RecFlare game client

Automatic download and setup of a game client to play [RecFlare](https://github.com/djdevin/recflare).

[BepInEx](https://github.com/BepInEx/BepInEx) and the [RecNet Plugin](https://github.com/djdevin/recnet-plugin) are installed as part of the setup.

## Download/update and play

1. Check out this repository or extract the ZIP: https://github.com/djdevin/recflare-client/archive/refs/heads/master.zip
2. Run `download.bat`. The script will ask whether you have Rec Room in your Steam library: if you do, it downloads the game client from Steam (DepotDownloader); if not, it syncs the game files from a mirror instead. Either way it then applies patches and configuration.
3. Run `RecRoomScreen.bat` or `RecRoomVR.bat`

## Custom server

Fork this project and change `/BepInEx/config/net.rec.plugin.cfg` to your own instance.
