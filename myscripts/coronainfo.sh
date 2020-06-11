#!/bin/sh

[ "$(stat -c %y ~/.cache/corona 2>/dev/null | cut -d' ' -f1 )" != "$(date '+%Y-%m-%d')" ] && curl -s https://corona-stats.online/greece > ~/.cache/corona

grep "Greece" ~/.cache/corona |
sed "s/\s*//g ; s/║//g ; s/▲//g; s/│/;/g ;s/\x1b\[[0-9;]*m//g" |
awk -F';' '{print  $3,$6,$7,$9 ,$5 }'
