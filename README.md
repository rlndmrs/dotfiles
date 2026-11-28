# Dotfiles for Debian with Gnome

## Debian installation

- Don't set password for root
- Select Gnome as Debian desktop environment
- Check 'ssh server' if needed
- Clone dotfiles (first read-only if needed) and run ./install

## Keyboard

```
sudo vi /etc/default/keyboard
XKBLAYOUT="be"
XKBVARIANT="developer"
XKBOPTIONS="ctrl:nocaps"
```
```
gsettings set org.gnome.desktop.peripherals.keyboard delay 250
gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 30
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

## Gnome extensions

 - Simple Taskbar
 - AppIndicator and KStatusNotifierItem Support

