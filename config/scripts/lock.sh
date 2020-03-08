grim /tmp/lock.png
convert /tmp/lock.png -scale 10% -paint 5 -scale 1000% /tmp/lock-blur.png
swaylock -i /tmp/lock-blur.png -e
