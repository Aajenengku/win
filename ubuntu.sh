echo -e "$123\n$123\n" | sudo passwd
rm -rf ngrok  ngrok.zip  ngrok.sh > /dev/null 2>&1
wget -O ngrok.sh https://bit.ly/GCngr0k > /dev/null 2>&1
chmod +x ngrok.sh
./ngrok.sh
clear
echo "======================="
echo choose ngrok region
echo "======================="
echo "us - United States (Ohio)"
echo "eu - Europe (Frankfurt)"
echo "ap - Asia/Pacific (Singapore)"
echo "au - Australia (Sydney)"
echo "sa - South America (Sao Paulo)"
echo "jp - Japan (Tokyo)"
echo "in - India (Mumbai)"
read -p "choose ngrok region: " CRP
./ngrok tcp --region $CRP 3388 &>/dev/null &
echo "===================================="
echo "Install RDP"
echo "===================================="
echo "===================================="
echo "Start RDP"
echo "===================================="
echo "===================================="
echo "Username : ubuntu"
echo "Password : ubuntu"
echo "RDP Address:"
curl --silent --show-error http://127.0.0.1:3350/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "===================================="
echo "Don't close this tab to keep RDP running"
echo "Wait to finish bot and next open RDC to connect"
echo "===================================="
echo "===================================="
docker run --rm -p 3388:3389 danielguerra/ubuntu-xrdp:20.04 > /dev/null 2>&1




