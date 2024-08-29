#!/bin/bash


install_requierments() {
  apt install python3 -y && sudo apt install python3-pip &&  pip install colorama && pip install netifaces && apt install curl -y
  apt install curl -y
}

install_xui_sanaei() {
  bash <(curl -Ls https://raw.githubusercontent.com/mhsanaei/3x-ui/master/install.sh)
}

install_rathole_2() {
  bash <(curl -Ls --ipv4 https://raw.githubusercontent.com/Musixal/rathole-tunnel/main/rathole_v2.sh)
}


install_azumi_local_tunnel() {
   python3 <(curl -Ls https://raw.githubusercontent.com/Azumi67/6TO4-GRE-IPIP-SIT/main/ipipv2.py --ipv4)
}

install_opiran_optimizer() {
   bash <(curl -s https://raw.githubusercontent.com/opiran-club/VPS-Optimizer/main/optimizer.sh --ipv4)
}

install_speedtest() {
   curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | sudo bash
   sudo apt-get install speedtest
}


main_list () {
  echo -e '\e[32mPlease select which one you want to install:\n'
  echo '1- Install Requierments'
  echo '2- X-Ui Sanaei'
  echo '3- Rathole 2'
  echo '4- Azumi Local Tunels'
  echo '5- Opiran Optimizer'
  echo '6- Speed Test script'
  echo -e '7-exit \e[0m \n'
  read -rp "Select Your choice: " user_choice
}

main_menu () {
  main_list
  if [[ $user_choice -eq 1 ]]
  then install_requierments
  elif [[ $user_choice -eq 2 ]]
  then install_xui_sanaei
  elif [[ $user_choice -eq 3 ]]
  then install_rathole_2
  elif [[ $user_choice -eq 4 ]]
  then install_azumi_local_tunnel
  elif [[ $user_choice -eq 5 ]]
  then install_opiran_optimizer
  elif [[ $user_choice -eq 6 ]]
  then install_speedtest
  elif [[ $user_choice -eq 7 ]]
  then exit
  fi
}

while :
do main_menu
done