sudo apt update && sudo apt upgrade -y


read -p "User name (required): " VPS_USER
if [ -z "$VPS_USER" ]; then
  echo "User name is required. Exiting."
  exit 1
fi
# Adding a user
adduser $VPS_USER --gecos ""
adduser $VPS_USER sudo


# Changing ssh config
echo "Configuring SSH..."
echo "Port 2424" | sudo tee -a /etc/ssh/sshd_config > /dev/null
sudo sed -i 's/PermitRootLogin yes/PermitRootLogin no/g' /etc/ssh/sshd_config



echo "Downloading installer script and launching install process... "
wget https://raw.githubusercontent.com/quentin72000/ternoa-node/main/ternoa -O ternoa-install.sh && chmod u+x ternoa-install.sh && ./ternoa-install.sh

echo "Configuring firewall..."
sudo apt install ufw -y
sudo ufw allow 2424
sudo ufw allow 30333
sudo ufw allow 9933
sudo ufw allow 9944

echo "Cofiguring fail2ban..."
sudo apt install fail2ban -y
sudo systemctl enable fail2ban

echo "Installing Cleanup Cronjob..."

echo "*/5 * * * * find /block/chain/node-data/chains/mainnet-live/db/full -type f -name "*.log" -print0 | xargs -0 ls -t | tail -n +10 | xargs rm >/dev/null 2>&1" | sudo crontab -


echo "Applying changes..."
sudo service sshd restart
sudo ufw enable
sudo systemctl start fail2ban


echo "Cleaning up..."
sudo apt autoremove -y


echo "Installation complete."
