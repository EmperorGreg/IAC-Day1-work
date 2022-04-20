#!/bin/bash
sudo apt update
sudo apt install apache2 -y
cd /var/www/html/
cat <<EOT > index.html
<h1>Hello George</h1>
EOT
cd ~