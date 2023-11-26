# WSL
## 1 or 2?
> The primary differences between WSL 1 and WSL 2 are the use of an actual Linux kernel inside a managed VM, support for full system call compatibility, and performance across the Linux and Windows operating systems.

By using a [real](https://github.com/microsoft/WSL2-Linux-Kernel) Linux kernel on Hyper-V, WSL2 provides complete syscall compatibilty, thus speeds up in-Linux FS, supporting more programs and GPU. Cross-system file access can be slowed down due to its VM nature.


[WSL2 install manual](https://learn.microsoft.com/zh-cn/windows/wsl/install-manual)

> WSL2 requires a lot of memory to run, eg. 8GB or more.

## Which Disk?

WSL2 resides in a `vhdx` virtual disk like other Hyper-V VMs. By default the file is stored in `WindowsApps` directory in C:, and cannot be moved by the app's policy. We can do a simple export and import run to get the virtal disk out of C:\ :

```sh
wsl --list --verbose
mkdir d:\backuplinux
wsl --export Ubuntu d:\backuplinux\ubuntu.tar
wsl --unregister Ubuntu
mkdir d:\wsl
wsl --import Ubuntu d:\wsl\ d:\backuplinux\ubuntu.tar
cd %userprofile%\AppData\Local\Microsoft\WindowsApps
ubuntu.exe config --default-user yourloginname
```

## CUDA

Grab a WSL CUDA toolkit and good to go: [Link](https://developer.nvidia.com/cuda-downloads?target_os=Linux&target_arch=x86_64&Distribution=WSL-Ubuntu&target_version=2.0&target_type=runfile_local)

Unlike real Linux systems, in WSL2, the Windows GPU driver injects a custom version of `libcuda.so` into WSL directory, which would be overwriten by a standard Linux driver installation.

## `apt-get`

Setting Proxy (eg. a Clash server on Windows machine)

```sh
sudo nano /etc/apt/apt.conf
wirte: Acquire::http::Proxy "http://yourproxyaddress:proxyport";
```

## ssh

Unlike WSL1, WSL2 performs like a normal Hyper-V VM using a virtual adapter to connect to internet. New forwarding rules need to be set each time after WSL reboots. See [this script](./wsl2_forwarding.ps1)