### Keyboard Toggle
Disables/enables the built-in laptop keyboard.

**Installation:**
```bash
cp scripts/toggle-laptop-kb.sh ~/.local/bin/
chmod +x ~/.local/bin/toggle-laptop-kb.sh
```

**Config (`~/.config/hypr/hyprland.conf`):**
```conf
$LAPTOP_KB_ENABLED = true

device {
    name = at-translated-set-2-keyboard  # This is MY device name - find yours with: hyprctl devices
    enabled = $LAPTOP_KB_ENABLED
}

bind = $mainMod CTRL, F12, exec, ~/.local/bin/toggle-laptop-kb.sh
```

### Touchpad Toggle
Disables/enables the built-in touchpad.

**Installation:**
```bash
cp scripts/toggle-laptop-tp.sh ~/.local/bin/
chmod +x ~/.local/bin/toggle-laptop-tp.sh
```

**Config (`~/.config/hypr/hyprland.conf`):**
```conf
$LAPTOP_TP_ENABLED = true

device {
    name = your-touchpad-name-here  # Find yours with: hyprctl devices
    enabled = $LAPTOP_TP_ENABLED
}

bind = $mainMod CTRL, F11, exec, ~/.local/bin/toggle-laptop-tp.sh
```

## Finding Your Device Names

Run `hyprctl devices` to find your specific keyboard and touchpad names.

## Reload Hyprland

After editing config:
```bash
hyprctl reload
```

## My Keybinds

- `SUPER + CTRL + F12` - Toggle keyboard
- `SUPER + CTRL + F11` - Toggle touchpad
