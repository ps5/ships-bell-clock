# Ship's bell clock for Linux and OSX

## To install:
```bash
croncmd="bash $(pwd)/chimes.sh"
(crontab -l 2>/dev/null | grep -v -F "$croncmd" ; echo "0,30 * * * * $croncmd") | crontab -
```

Or manually add this to cron (_crontab -e_):
```0,30 * * * * bash /{PATH-TO-SCRIPT}/chimes.sh```

## To uninstall:
```bash
croncmd="bash $(pwd)/chimes.sh"
(crontab -l 2>/dev/null | grep -v -F "$croncmd" ) | crontab -
```

Or manually remove it from cron.
