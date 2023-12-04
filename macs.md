# Checklists

- Time Machine Restore: 可以跨架构迁移，但也意味着会带上很多X64的软件和依赖；旧机器存在的问题也会一并带过去，相当于丢掉了Fresh Installation的机会。

- Install `xcode-select`


# How-tos

- Use Apple's `game-porting-toolkit` to run Windows games/apps: https://gist.github.com/Frityet/448a945690bd7c8cff5fef49daae858e

# Softwares

- [eqMac](https://github.com/bitgapp/eqMac/releases): System-wide eq  (Only fixed-band eqs w/o subscription)

- [Macs Fan Control](https://crystalidea.com/macs-fan-control)

- [VSC](https://code.visualstudio.com/download)
    - Install CLI: Command Palette>Shell command: Install `code` command in PATH
- [MS Remote Desktop Beta](https://install.appcenter.ms/orgs/rdmacios-k2vy/apps/microsoft-remote-desktop-for-mac/distribution_groups/all-users-of-microsoft-remote-desktop-for-mac)
    - App Store国区下架了RD
- smartmontools: Check disk health (dump SMART info)
  - Install via brew
  - Sample command: `sudo smartctl --all /dev/disk0`

# Shell

- [Oh-My-Zsh](https://ohmyz.sh/#install)
- [brew](https://brew.sh)


# Settings

- Trackpad
    - Tap to click
- Dock
    - Magnification   
- Menu Bar
    - Spotlight Off

# Finder
- Always show all files: `defaults write com.apple.finder AppleShowAllFiles true`
