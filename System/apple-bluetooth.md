# Apple Bluetooth Audio Controls

Increase the low default bluetooth audio quality

[Bluetooth Docs](https://developer.apple.com/bluetooth)

[Audio Docs](https://developer.apple.com/audio)


```sh

# Enable best quality bluetooth audio for ALL users
sudo defaults write bluetoothaudiod "AAC Bitrate" -int 320
sudo defaults write bluetoothaudiod "AAC max packet size" - int 644
sudo defaults write bluetoothaudiod "Apple Initial Bitpool" -int  64
sudo defaults write bluetoothaudiod "Disable AAC codec" -int 0
sudo defaults write bluetoothaudiod "Enable AAC codec" -bool true
sudo defaults write bluetoothaudiod "Enable AptX codec" -bool true

# Read bluetooth settings
sudo defaults read bluetoothaudiod

# Delete a setting
sudo defaults delete bluetoothaudiod "AAC max packet size"
```
