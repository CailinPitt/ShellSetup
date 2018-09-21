profile = "~/.bash_profile"

if [ ! -f profile ]; then
    touch profile
    # Create .bash_profile if it does not already exist
fi

echo "alias ll="\""ls -l -a"\""" >> profile
# Add ll command

cat > profile <<EOL
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad
EOL
# Add color to terminal

cat > profile <<EOL
export HISTSIZE=10000
export HISTFILESIZE=120000
EOL
# Increase history size

cat > profile <<EOL
clear
echo -ne "Today is "; date
echo -e ""; cal ; -e "";
EOL
# Add welcome message containing date and calendar

defaults write com.apple.finder AppleShowAllFiles -bool TRUE
killall Finder
# Show hidden files and folders in Finder




source profile
# Make changes available