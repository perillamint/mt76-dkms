# mt76-dkms
## How to install

```
cd /usr/src
git clone --recursive https://github.com/perillamint/mt76-dkms.git mt76-<mt76-commithash>
dkms add mt76/<mt76-commithash>
dkms build mt76/<mt76-commithash>
dkms install mt76/<mt76-commithash>
```

## Note about mt76 firmware installation
You should copy mt76 firmwares into `/lib/firmware` to make this driver work properly.

Run this to install mt76 firmware on your system

```
cd src/firmware
sudo cp -v *.bin /usr/lib/firmware/
```

## Note about who want to use it as monitor mode only dongle

You may experience problem with NetworkManager when you try to use wifi dongle with airmon-ng.

If you want its monitor mode capability only, you can simply disable it from NetworkManager using udev rule (see 90-mt7612u.rules).
