grim /tmp/lock.png
convert /tmp/lock.png -scale 25% -paint 5 -scale 400% /tmp/lock-blur.png
swaylock -i /tmp/lock-blur.png -e
