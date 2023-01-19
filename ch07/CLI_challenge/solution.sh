egrep -o '".F.*H.*\.[0-9]+' admin.index|cut -d" " -f4|sort|uniq -c
