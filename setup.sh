profile = "~/.bash_profile"

if [ ! -f profile ]; then
    touch profile
    # Create .bash_profile if it does not already exist
fi

echo "alias ll="\""ls -l -a"\""" >> profile
# Add ll command

source profile
# Make changes available