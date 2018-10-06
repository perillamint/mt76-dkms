# mt76-dkms
## How to install

```
cd /usr/src
git clone https://github.com/perillamint/mt76-dkms.git mt76-<mt76-commithash>
dkms add mt76/<mt76-commithash>
dkms build mt76/<mt76-commithash>
dkms install mt76/<mt76-commithash>
```
