A simple sysytem statistic viewing script for unix systems.
It shows Time, Disk space, Uer uptime, last login details and currently connected user details.

To run clone the repo, enter the directory, then :
```
chmod +x systemstat.sh
```
Then:
```
./systemstat.sh
```

Or you can run it with bash without making it executable:
```
bash systemstat.sh
```

It should work on mac too, but the `awk` may not show the desired output becuase mac may have different output for the same commands.
You can run it in windows with wsl.
