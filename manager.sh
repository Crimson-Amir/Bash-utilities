#!/bin/bash
source install_function.sh

main_list () {
  echo -e '\e[32mPlease select which one you want to install:\n'
  echo '1- Install Requierments'
  echo '2- X-Ui Sanaei'
  echo '3- Rathole 2'
  echo '4- Azumi Local Tunels'
  echo '5- Opiran Optimizer'
  echo -e '6- Speed Test script\e[0m \n'
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
  fi
}

while :
do main_menu
done