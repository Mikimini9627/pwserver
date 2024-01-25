sudo useradd -m steam
sudo passwd steam
sudo usermod -G sudo steam
sudo -u steam -s
cd /home/steam
sudo add-apt-repository multiverse; sudo dpkg --add-architecture i386; sudo apt update
sudo apt install steamcmd
/usr/games/steamcmd +login anonymous +app_update 2394010 validate +quit
mkdir -p ~/.steam/sdk64/
/usr/games/steamcmd +login anonymous +app_update 1007 +quit
cd ~/.steam/SteamApps/common/PalServer
cp ~/.steam/SteamApps/common/Steamworks\ SDK\ Redist/linux64/steamclient.so ~/.steam/sdk64/
./PalServer.sh