#!/bin/bash

[ "$(stat -c %y ~/.cache/corona 2>/dev/null | cut -d' ' -f1)" != "$(date '+%Y-%m-%d')" ] &&
	curl -s "https://corona-stats.online/no" > ~/.cache/corona

grep "Norway" ~/.cache/corona |
	sed "s/\s*//g ; s/║//g ; s/│/;/g" |
	sed -r "s/\x1B\[([0-9]{1,3}(;[0-9]{1,2})?)?[mGK]//g" |
	awk -F';' '{print "    A:  " $8 "    R:  " $7 "    D:  " $5 "    T:  " $3 "  "}'

#Thanks to Luke Smith https://www.youtube.com/watch?v=cQ03v4d3QEo
