# swww-random-wallpaper-generator

A small shell script that picks a random wallpaper using [`swww`](https://github.com/LGFae/swww) on Wayland.  
Built for Hyprland rices, but it works with any Wayland compositor supported by `swww`.

---

## Features

- Randomly selects an image from a directory (recursive or flat).
- Optional transition effects via `swww img` (duration, effect, fps).
- Supports common image formats (`.jpg`, `.jpeg`, `.png`, `.webp`).
- Can run once, on an interval (loop), or be scheduled via systemd timer.
- Optional exclude patterns and logging.

---

## Requirements

- Wayland session.
- [`swww`](https://github.com/LGFae/swww) installed and on `PATH`.
- `bash` or a POSIX shell.
- A directory containing wallpapers.

On Arch-based systems:
```bash
# swww is in the AUR and some repos; choose one that fits your setup
sudo pacman -S swww
# or
yay -S swww
