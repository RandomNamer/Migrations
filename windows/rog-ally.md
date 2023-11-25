# Useful Links
- [ROG Ally Guide](https://github.com/mikeroyal/Asus-ROG-Ally-Guide)
- [ROG Ally Life](https://rogallylife.com/)
- 
# Setup

1. Windows has an annoying OOBE and update process, live with it first
2. Fuck off all bloatware using BloatyNosy and manual uninstallation.
3. Reinstall bundled Steam
4. [Disable and uninstall OneDrive](https://support.microsoft.com/en-us/office/turn-off-disable-or-uninstall-onedrive-f32a17ce-3336-40fe-9c38-6efb09f944b0)

# Performance and Battery
## Disable Turbo Boost
- Navigate to `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\be337238-0d82-4146-a960-4f3749d470c7`
- Edit registry `Attribute` to 2.
- Now you can edit turbo boost settings in power plan mgt.
