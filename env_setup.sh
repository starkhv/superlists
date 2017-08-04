# install selenium
cd /tmp
wget https://github.com/mozilla/geckodriver/releases/download/v0.18.0/geckodriver-v0.18.0-linux64.tar.gz
tar -xvzf geckodriver-v0.18.0-linux64.tar.gz
chmod +x geckodriver
sudo mv geckodriver /usr/local/bin/
pip install selenium
