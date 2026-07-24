# RecFlare game client

Automatic download and setup of a game client to play [RecFlare](https://github.com/djdevin/recflare).

[BepInEx](https://github.com/BepInEx/BepInEx) and the [RecNet Plugin](https://github.com/djdevin/recnet-plugin) are installed as part of the setup.

## Download/update and play

### Easy way: installer

Download and run `RecFlareSetup.exe` from the [releases page](https://github.com/djdevin/recflare-client/releases). The wizard asks whether you have Rec Room in your Steam library: if you do, it downloads the game client from Steam (DepotDownloader, signing in with your username or a Steam mobile app QR code); if not, it downloads the game files from a mirror instead. It then installs BepInEx and the RecNet plugin, and creates Start menu/desktop shortcuts for desktop and VR mode.

If Windows SmartScreen shows "Windows protected your PC", click **More info** and then **Run anyway** (the installer is unsigned).

To build the installer yourself, compile `RecFlareSetup.iss` with [Inno Setup](https://jrsoftware.org/isinfo.php) 6.1 or later: `iscc RecFlareSetup.iss`.

### Manual way: scripts

1. Check out this repository or extract the ZIP: https://github.com/djdevin/recflare-client/archive/refs/heads/master.zip
2. Run `download.bat`. The script will ask whether you have Rec Room in your Steam library: if you do, it downloads the game client from Steam (DepotDownloader); if not, it syncs the game files from a mirror instead. Either way it then applies patches and configuration.
3. Run `RecRoomScreen.bat` or `RecRoomVR.bat`

## Custom server

Fork this project and change `/BepInEx/config/net.rec.plugin.cfg` to your own instance.
