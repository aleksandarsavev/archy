## Video

**Add screen on the left of your main screen:**

    xrandr --output <name> --auto --output <name> --auto --left-of <name>

## Pacman

**Update package information**

    pacman -Syy

**Update the system**

    pacman -Su

## SSH

### Copy files from one machine to another

Syntax:

    scp <source> <destination>

To copy a file from B to A while logged into B:

    scp /path/to/file username@a:/path/to/destination

To copy a file from B to A while logged into A:

    scp username@b:/path/to/file /path/to/destination
