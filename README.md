# wsl-tmux-autolayout-config
My personal tmux configuration. I have been looking around for a while for an example config for tmux where it will automatically create a predefined layout, but I couldn't get any of those to work properly.
I was able to make it work just the way I want eventually and I would like to share it with everyone who is interested.

This configuration will automatically create my default layout when opening tmux with `tmux a` command.

default-layout:

	_________________________________
	! 	  80%		!  20%	!
	! 			!  	!
	! 		   37.5%! 	!
	! 			!  	!
	! 			!_______!
	!75% 			! 	!
	! 		   37.5%! 	!
	! 			!	!
	!_______________________!_______!
	! 	50%    	!  	50%	!
	!25% 		! 		!
	!_______________!_______________!


the layout can be changed inside `.tmux/config/default-layout.sh`.
It will trigger powerline for tmux, htop, lnav for /var/log/apache2/error.log and access.log, and one sudo su for a root console.

You may find additional information [here](http://man.openbsd.org/OpenBSD-current/man1/tmux.1)

Requirements:
1. powerline
2. lnav
3. htop

Setup:
1. `cd`
2. `git clone https://github.com/blisk92/tmux-autolayout-config.git`
3. `ln -s tmux-autolayout-config/.tmux/ ./`
4. `ln -s tmux-autolayout-config/.tmux.conf ./`
5. run tmux via `tmux a`
