# Dotfiles for Debian with KDE

## Debian installation

- Don't set password for root
- Select KDE as Debian desktop environment
- Check 'ssh server' if needed
- Clone dotfiles (first read-only if needed) and run ./install

## Keyboard

```
sudo vi /etc/default/keyboard
XKBLAYOUT="be"
XKBVARIANT="developer"
XKBOPTIONS="ctrl:nocaps"
```

## SSH

```
ssh-keygen -t ed25519 -a 100
```

## Sleep

Save battery when closing laptop
```
sudo vi /etc/default/grub
GRUB_CMDLINE_LINUX_DEFAULT="quiet mem_sleep_default=deep"
sudo update-grub
```

## KDE Settings

### Region & Language

Change time, numbers, currency, ... format

### Keyboard

 - Key repeat: delay = 200ms, rate=40 repeat/s
 - Layout: Belgian, developer
 - Shortcuts: alacritty = Meta+Return
 - Key Bindings: Ctrl position -> Caps Lock as Ctrl

### Touchpad

Natural scrolling

### Autostart

Add new application:
```
rclone mount drive: ~/Drive --vfs-cache-mode full --daemon
```

