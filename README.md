# mt76-dkms
## How to install

```
cd /usr/src
git clone --recursive https://github.com/perillamint/mt76-dkms.git mt76-<mt76-commithash>
dkms add mt76/<mt76-commithash>
dkms build mt76/<mt76-commithash>
dkms install mt76/<mt76-commithash>
```

## Note about known issues of mt76

mt76 does not play well with NetworkManager (see issue https://github.com/openwrt/mt76/issues/139). If you want its monitor mode capability only, you can simply disable it from NetworkManager using udev rule (see 90-mt7612u.rules).
