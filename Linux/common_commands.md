# Monitoring
- Monitor disk temp: `watch smartctl -a /dev/xxx | grep Temperature_Celcius`
- Monitor IO: `iotop`

# Maintenance
- Manage journal size`sudo journalctl --vacuum-time=10d`
