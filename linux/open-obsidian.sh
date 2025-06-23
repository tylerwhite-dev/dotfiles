# Install wmctrl to run script correctly

# Checking if Obsidian is running
if pgrep -x "obsidian" > /dev/null
then
    # If running, focus its window using wmctrl
    if wmctrl -a "Obsidian"; then
        echo "Obsidian is already running, window activated."
    else
        echo "Obsidian window not found."
    fi
else
    # If not running, launch it
    flatpak run md.obsidian.Obsidian
fi
