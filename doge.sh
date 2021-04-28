#!/usr/bin/env bash

clear

if [ -z ${1+x} ]; then
	printf "No arguments supplied\n\n";
	printf "Usage Example: bash doge.sh 333\n\n";
	exit 0;
fi

stock_url="crypto/DOGE"
stock_value=$(curl -s https://robinhood.com/${stock_url} | grep -oP 'span aria-atomic="true" aria-label="\K[^"]+')
stock_value_number=$(echo ${stock_value} | sed 's/\$//')
stock_equity=$(echo "scale=4; ${1}*${stock_value_number}" | bc)

printf "\n"
printf "$(tput setaf 0)$(tput setab 7)"
printf "         ▄              ▄    \n"
printf "        ▌▒█           ▄▀▒▌   \n"
printf "        ▌▒▒█        ▄▀▒▒▒▐   \n"
printf "       ▐▄█▒▒▀▀▀▀▄▄▄▀▒▒▒▒▒▐   \n"
printf "     ▄▄▀▒▒▒▒▒▒▒▒▒▒▒█▒▒▄█▒▐   \n"
printf "   ▄▀▒▒▒░░░▒▒▒░░░▒▒▒▀██▀▒▌   \n"
printf "  ▐▒▒▒▄▄▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▀▄▒▌  \n"
printf "  ▌░░▌█▀▒▒▒▒▒▄▀█▄▒▒▒▒▒▒▒█▒▐  \n"
printf " ▐░░░▒▒▒▒▒▒▒▒▌██▀▒▒░░░▒▒▒▀▄▌ \n"
printf " ▌░▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░░░░░▒▒▒▒▌ \n"
printf "▌▒▒▒▄██▄▒▒▒▒▒▒▒▒░░░░░░░░▒▒▒▐ \n"
printf "▐▒▒▐▄█▄█▌▒▒▒▒▒▒▒▒▒▒░▒░▒░▒▒▒▒▌\n"
printf "▐▒▒▐▀▐▀▒▒▒▒▒▒▒▒▒▒▒▒▒░▒░▒░▒▒▐ \n"
printf " ▌▒▒▀▄▄▄▄▄▄▒▒▒▒▒▒▒▒░▒░▒░▒▒▒▌ \n"
printf " ▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░▒░▒▒▄▒▒▐  \n"
printf "  ▀▄▒▒▒▒▒▒▒▒▒▒▒▒▒░▒░▒▄▒▒▒▒▌  \n"
printf "    ▀▄▒▒▒▒▒▒▒▒▒▒▄▄▄▀▒▒▒▒▄▀   \n"
printf "      ▀▄▄▄▄▄▄▀▀▀▒▒▒▒▒▄▄▀     \n"
printf "         ▀▀▀▀▀▀▀▀▀▀▀▀        \n"
printf "$(tput sgr 0)"
printf "\n\n"
printf "Dogecoin: ${stock_value}\n"
printf "Dogecoin Shares: ${1}\n"
printf "Equity: \$${stock_equity}\n"
printf "\n\n"
printf "$(tput setaf 2)such wallet$(tput sgr 0)                      $(tput setaf 4)very blockchain$(tput sgr 0)              $(tput setaf 5)good boi$(tput sgr 0)"
printf "\n\n"
