# Displaying "MrLizard" and applying iptables rules
echo "  __  ___     __    _                      __  
 /  |/  /____/ /   (_)___  ____ __________/ /  
/ /|_/ / ___/ /   / /_  / / __  / ___/ __  /   
/ /  / / /  / /___/ / / /_/ /_/ / /  / /_/ /    
/_/  /_/ /  /_____/_/ /___/__,_/_/   __,_/ "
sleep 3 && 
sudo iptables -A FORWARD -s 200.0.0.0/8 -j DROP && 
sudo iptables -A FORWARD -s 102.0.0.0/8 -j DROP && 
sudo iptables -A FORWARD -s 10.0.0.0/8 -j DROP && 
sudo iptables -A FORWARD -s 100.64.0.0/10 -j DROP && 
sudo iptables -A FORWARD -s 169.254.0.0/16 -j DROP && 
sudo iptables -A FORWARD -s 198.18.0.0/15 -j DROP && 
sudo iptables -A FORWARD -s 198.51.100.0/24 -j DROP && 
sudo iptables -A FORWARD -s 203.0.113.0/24 -j DROP && 
sudo iptables -A FORWARD -s 224.0.0.0/4 -j DROP && 
sudo iptables -A FORWARD -s 240.0.0.0/4 -j DROP && 
sudo iptables -A FORWARD -s 255.255.255.255/32 -j DROP && 
sudo iptables -A FORWARD -s 192.0.0.0/24 -j DROP && 
sudo iptables -A FORWARD -s 192.0.2.0/24 -j DROP && 
sudo iptables -A FORWARD -s 127.0.0.0/8 -j DROP && 
sudo iptables -A FORWARD -s 127.0.53.53 -j DROP && 
sudo iptables -A FORWARD -s 192.168.0.0/16 -j DROP && 
sudo iptables -A FORWARD -s 0.0.0.0/8 -j DROP && 
sudo iptables -A FORWARD -s 172.16.0.0/12 -j DROP && 
sudo iptables -A FORWARD -s 224.0.0.0/3 -j DROP && 
sudo iptables -A FORWARD -s 192.88.99.0/24 -j DROP && 
sudo iptables -A FORWARD -s 169.254.0.0/16 -j DROP && 
sudo iptables -A FORWARD -s 198.18.140.0/24 -j DROP && 
sudo iptables -A FORWARD -s 102.230.9.0/24 -j DROP && 
sudo iptables -A FORWARD -s 102.233.71.0/24 -j DROP && 
sudo iptables-save && 

# Applying ufw rules
ufw deny out from any to 10.0.0.0/8 && 
ufw deny out from any to 172.16.0.0/12 && 
ufw deny out from any to 192.168.0.0/16 && 
ufw deny out from any to 100.64.0.0/10 && 
ufw deny out from any to 198.18.0.0/15 && 
ufw deny out from any to 169.254.0.0/16 && 
ufw deny out from any to 102.236.0.0/16 && 
ufw deny out from any to 2.60.0.0/16 &&
ufw deny out from any to 5.1.41.0/12 && 
ufw deny out from any to 102.86.0.0/16 && 

# Installing ufw
sudo apt-get install ufw -y && 

# Setting up ufw rules interactively
while true; do
    read -p "please enter port (type exit for setup): " port
    if [[ $port == "exit" ]]; then
        break
    fi
    sudo ufw allow $port
done && 

# Enabling ufw
sudo ufw --force enable

echo "Firewall enabled."
