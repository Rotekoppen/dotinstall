grim /tmp/lock.png
convert /tmp/lock.png -scale 5% -paint 5 -scale 2000% /tmp/lock-blur.png
swaylock -i /tmp/lock-blur.png -e --clock --indicator --grace 30 --fade-in 0.2 --indicator-radius 200 --indicator-thickness 14
