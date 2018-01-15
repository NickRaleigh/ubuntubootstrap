#       ___           ___
#      /\  \         /\  \
#      \:\  \       /::\  \
#       \:\  \     /:/\:\__\
#   _____\:\  \   /:/ /:/  /
#  /::::::::\__\ /:/_/:/__/___
#  \:\~~\~~\/__/ \:\/:::::/  /
#   \:\  \        \::/~~/~~~~
#    \:\  \        \:\~~\
#     \:\__\        \:\__\
#      \/__/         \/__/
# 
# =============================
# ---N-I-C-K---R-A-L-E-I-G-H---
# ============================

# Ubuntu Boostrap Script

# INSTALL
# =============================
# Install Curl
sudo apt-get update
sudo apt-get install build-essential
sudo apt-get install curl


curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt-get update
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev nodejs yarn ruby-full

# Install Linux Brew
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
echo 'export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"' >>~/.profile
echo 'export MANPATH="/home/linuxbrew/.linuxbrew/share/man:$MANPATH"' >>~/.profile
echo 'export INFOPATH="/home/linuxbrew/.linuxbrew/share/info:$INFOPATH"' >>~/.profile
sudo apt-get install build-essential
echo 'PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"' >>~/.profile
source ~/.profile
sudo locale-gen "en_US.UTF-8"

# Install Vim
brew install vim

# Install Tmux
git clone https://github.com/tmux/tmux.git
cd tmux
sh autogen.sh
./configure && make
