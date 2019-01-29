#No-Mo-Head

Here's a bit of background: I frequently use my Pi in headless mode, but I live in a college where the Wifi doesn't let you use static IPs. I've implemented a number of workarounds for this problem, but this is the one that stuck. If you can connect to a wireless network, but have no means to retrive the local ip address of your pi, this could help.

## Installation

First clone the repository (if you have git on your Raspi. If not, just download):
```
git clone https://github.com/NoahRoseLedesma/nomohead.git
```

Checkout the local_ip branch
```
git checkout local_ip
```

Next, run the install script:
```
./setup.sh
```

Setup asks for the following parameters:

1. Dweet ID - This is the ID you will be using to broadcast the IP. Enter something you think is unique (i.e. not raspi)
2. The name of the interface to forward the ipv4 address of

Once all values are entered, a cron job is created that runs at boot.

At this point, you can reboot your Pi.

## Dweets

In order to find your raspberry pi, you can go to 
```
http://dweet.io/follow/<RASPID>
```
or, in order to see all updates in 24 hours, go to 
```
http://dweet.io/get/dweets/for/<RASPID>
```
and replace _RASPID_ with the IP or Tunnel ID you gave during Setup. 
I prefer the former because it looks better, but it is certainly possible to run automated scripts that poll the JSON from the latter and do things once the Raspi comes online.

#### Happy Hacking!
