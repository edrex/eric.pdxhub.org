## install debian

My Beaglebone (shipped March 15) came stock with Angstrom, which I replaced with the official BB Debian image. Beaglebones are now shipping with Debian preinstalled.

  - http://beagleboard.org/latest-images
  - http://learn.adafruit.com/downloads/pdf/beaglebone-black-installing-operating-systems.pdf

## trim down

The Beaglebone Debian image comes with a bunch of useful stuff (Git, tmux) but it only leaves about 120MB for installing application packages, log files, etc.

To see a list of manually installed packages sorted by size, open `aptitude` and

  - Views > new flat package list
  - limit (press **l**): !~v ~i !~M
  - sort (press **S**): installsize

list of possibly unnecessary packages:

  - /opt/cloud9 (not from a deb package) ~60MB

## secure login

 - adduser, put in sudo group
 - disable root SSH login

## hdd reformat

 - backup everything
 - GPT + btrfs
 - also looked at ZFS which has Mac support, but there were no ARM binaries and I read things about its cache being memory hungry. Investigate further if you want Mac support.

## home network

My home router is DD-WRT. I highly recommend using it over stock vendor firmwares.

 - edit /etc/hostname to "alexandria"
 - dd-wrt: 
  - give the host a static IP and hostname via DHCP mac binding
 - **Updated 4/28:** In *Services > DHCP Server* set the LAN Domain. This will resolve your host to the local IP for devices connected to your home network. For example, my public server is *alexandria.pdxhub.org*, so I set *pdxhub.org* as LAN domain.
 - forward ports to device: `3179`, `22`

## public network

 - [Set up a dynamic DNS name using freedns.afraid.org](http://www.dd-wrt.com/wiki/index.php/Dynamic_DNS#freedns.afraid.org)
 - In the public DNS for your domain, CNAME the device subdomain to the dynamic domain.
 - Get a free SSL cert from StartSSL. *Thanks [bret.io](http://bret.io/) for this tip!*



## cross-compile camlistore (on laptop)

 - `git clone ...`
 - `cd /usr/local/go/src` (or wherever your Go source is)
 - `sudo GOOS=linux GOARCH=arm CGO_ENABLED=0 ./make.bash --no-clean`
 - src: http://stackoverflow.com/questions/12168873/cross-compile-go-on-osx
 - `go run make.go -arch=arm -os=linux`
 - one line deploy: `go run make.go -arch=arm -os=linux && rsync -avz bin/linux_arm/camlistored $USER@$HOST:/usr/local/bin/`

## camlistored startup

 - copy init script from https://gist.github.com/naholyr/4275302

## syncc

## Upcoming

 - case
 - usb power solution