#!/bin/bash
#portscan v0.1

while getopts i: flag #Get the user input
do
    case "${flag}" in
        i) ipadd=${OPTARG};;
    esac
done

depn(){ #check's needed tools
    clear
    command -v masscan > /dev/null 2>&1 || { echo >&2 "Installing Masscan"; sudo apt-get install masscan; }
    command -v nmap > /dev/null 2>&1 || { echo >&2 "Installing Nmap "; sudo apt-get install nmap; }
    menu
}

menu(){ #main function to use nmap and masscan

if [[ $ipadd == "" ]] ; then
printf "Procedure to Run: portscan -i <IPaddress>";
else
echo "::Scanning All 8100 Ports::"
echo ""
echo "Scanning Ip Address :$ipadd"
echo ""
echo "---------------------------------------------------------------------------"
sudo masscan -p 00-8100 $ipadd > masscan-$ipadd.txt
echo "::Mass Scan Completed Saved as masscan-$ipadd.txt"
echo ""
echo "---------------------------------------------------------------------------"
echo ":: :) Scanning With Nmap It may take Few Minutes(Take a tea Break :) ::"
echo ""
sudo nmap -sV -Pn $ipadd > nmap-$ipadd.txt
echo ""
echo "---------------------------------------------------------------------------"
echo "::Nmap Scan Completed Saved as nmap-$ipadd.txt"
echo "---------------------------------------------------------------------------"
fi

}

depn #depn function call
