sudo apt update
sudo apt install wget
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add -
echo "deb http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list
sudo apt update
sudo apt install anydesk -y
sudo systemctl start anydesk.service
sudo systemctl enable anydesk.service
sudo systemctl status anydesk.service
anydesk
