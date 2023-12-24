export LANG=en_US.UTF-8

# Pywal edits $userresources, necessary to merge with xrdb to change colors on wallpaper change
if [ -f "$userresources" ]; then     
	xrdb -merge "$userresources" 
fi

exec i3

# necessary for DNS resolution (NetworkManager should write this to resolv.conf)
echo "nameserver 8.8.8.8" > /etc/resolv.conf

# polkit
lxpolkit &
