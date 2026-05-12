### Keyboard Toggle

Disables/enables the built-in laptop keyboard dynamically using Hyprland's Lua eval. This is helpful when I place my external keyboard on my laptop so it wont randomly press keys.

<img width="2947" height="2311" alt="IMG_20260512_235459" src="https://github.com/user-attachments/assets/196b5aaf-2612-4872-ad3e-7c489fc74b23" />
<br></br>

**Installation:**

```bash
cp toggle-laptop-kb.sh ~/.local/bin/
chmod +x ~/.local/bin/toggle-laptop-kb.sh
```

**Note:** You must edit `~/.local/bin/toggle-laptop-kb.sh` and change `at-translated-set-2-keyboard` to your actual keyboard device name (find it with `hyprctl devices`).

**Config (`~/.config/hypr/hyprland.conf`):**

```conf
bind = $mainMod CTRL, F12, exec, ~/.local/bin/toggle-laptop-kb.sh
```

### Touchpad Toggle

Disables/enables the built-in touchpad dynamically using Hyprland's Lua eval.

**Installation:**

```bash
cp toggle-laptop-tp.sh ~/.local/bin/
chmod +x ~/.local/bin/toggle-laptop-tp.sh
```

**Note:** You must edit `~/.local/bin/toggle-laptop-tp.sh` and change `elan050a:00-04f3:3158-touchpad` to your actual touchpad device name (find it with `hyprctl devices`).

**Config (`~/.config/hypr/hyprland.conf`):**

```conf
bind = $mainMod CTRL, F11, exec, ~/.local/bin/toggle-laptop-tp.sh
```

## Finding Your Device Names

Run `hyprctl devices` to find your specific keyboard and touchpad names.

## My Keybinds

- `SUPER + CTRL + F12` - Toggle keyboard
- `SUPER + CTRL + F11` - Toggle touchpad
