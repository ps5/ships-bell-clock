#!/bin/bash
# Ships bell clock (watch chimes)

# change to scripts folder
cd "$(dirname "$0")"

# get current time
now=$(date +"%I%M")

# get platform
if [ $(uname) == "Darwin" ]; then
	aplay="afplay" # OSX
else
	aplay="aplay" # Debian default
fi

# play chimes
case $now in
	# 1 bell: 12:30 | 4:30 | 8:30
	"1230" | "430" | "830")
	$aplay wav/1.wav 
	;;
	# 2 bells: 1:00, 5:00, 9:00
	"100" | "500" | "900")
	$aplay wav/2.wav 
	;;
	# 3 bells: 1:30 | 5:30 | 9:30
	"130" | "530" | "930")
	$aplay wav/3.wav 
	;;
	# 4 bells: 2:00 | 6:00 | 10:00
	"200" | "600" | "1000")
	$aplay wav/4.wav 
	;;
	# 5 bells: 2:30 | 6:30 | 10:30
	"230" | "630" | "1030")
	$aplay wav/5.wav 
	;;
	# 6 bells: 3:00 | 7:00 | 11:00
	"300" | "700" | "1100")
	$aplay wav/6.wav 
	;;
	# 7 bells: 3:30 | 7:30 | 11:30
	"330" | "730" | "1130")
	$aplay wav/7.wav 
	;;
	# 8 bells: 12:00 | 4:00 | 8:00
	"1200" | "400" | "800")
	$aplay wav/8.wav 
	;;
	*)
	echo "Now:" $now
	;;
esac 

# https://www.chelseaclock.com/blogs/blog/chiming-decoding-ships-bell-clock-code
# https://freesound.org/search/?g=0&f=username%3A%22Benboncan%22+tag%3A%22ships-bell%22

# First Watch: 8:00 p.m. to 12:00 a.m.
# Mid-Watch (also Black Watch): 12:00 a.m. to 4:00 a.m.
# Morning Watch: 4:00 a.m. to 8:00 a.m.
# Forenoon Watch: 8:00 a.m. to 12:00 p.m.
# Afternoon Watch: 12:00 p.m. to 4:00 p.m.
# Evening Watch: 4:00 p.m. to 8:00 p.m.

# To rotate each division’s watch times, the Evening Watch is periodically divided 
# into two watches. These are called Dog Watches because they “dog” the watch schedule 
# for all divisions ahead by one watch period.

# The watch officer struck the ship’s bell every half-hour to apprise the crew of the time. 
# A single bell denoted the end of the first half-hour, and one bell was added each half-hour. 
# Eight bells, therefore, signaled the end of each four-hour watch.

