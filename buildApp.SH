#!/bin/bash

RED='\033[1;32m'
NC='\033[0m' # No Color
BOLD=$(tput bold)
NORM=$(tput sgr0)

echo -e "${RED}${BOLD}Make entire App up?${NC}${NORM} (Y/N)" 
read appUp

if [[ ( $appUp == "Y" ) ]]; then
echo -e "${RED}${BOLD}Installing node modules for Express API Server... ${NC}${NORM}"
npm install &>/dev/null
echo -e "${RED}${BOLD}Installing node modules for React Client and building production ready files...${NC}${NORM}"
cd views/client
npm install &>/dev/null && npm run build &>/dev/null
echo -e "${RED}${BOLD}Starting Application...Please head over to http://localhost:9000${NC}${NORM}"
cd ../..
npm start
elif [ $appUp == 'N' ]; then
echo -e "${RED}${BOLD}Installing node modules for React Client and Starting app...${NC}${NORM}"
cd views/client
echo -e "${RED}${BOLD}React UI is booting at http://localhost:3000${NC}${NORM}"
npm install &>/dev/null && npm run start 
else
echo -e "${RED}${BOLD}Please Choose Y/N${NC}${NORM}"
fi

