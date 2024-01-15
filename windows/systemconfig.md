# Remote shutdown
Add user to force shutdown allowlist according to [this](https://community.home-assistant.io/t/shutdown-windows-remotely/22662/62) then use `net rpc -I xx.xx.xx.xx -U "user%pswd"` to execute the shutdown.
