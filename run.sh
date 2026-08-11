#!/bin/bash
# github.com/yasbtw

cd "$(dirname "${BASH_SOURCE}")" || exit 1

read -r -d '' text << 'EOF'
░█▀▄░█▀█░█▀▄░░░█▀█░█▀█░█▀█░█░░░█▀▀░█░█
░█▀▄░█▀█░█░█░░░█▀█░█▀▀░█▀▀░█░░░█▀▀░▀░▀
░▀▀░░▀░▀░▀▀░░░░▀░▀░▀░░░▀░░░▀▀▀░▀▀▀░▀░▀
                    github.com/@yasbtw
EOF

mode="$1"

echo -e "\033[1m$text\e[?1049h"
tput rmam
tput civis
trap quit EXIT

quit() {
  tput smam
  tput cnorm
  stty echo
  echo -e '\e[?1049l'
}

render(){
  tput cup 0 0
  echo "$1"
  sleep 0.0282
  tput ed
}

start() {
  if command -v pw-play &> /dev/null; then
    pw-play "$2" &
  elif command -v mpg123 &> /dev/null; then
    mpg123 -q --no-control "$2" &
  fi
  if [[ ! -d "$1" ]]; then
    echo "[!] Ascii directory not found at $1"
    exit 1
  fi
  if [[ $mode == "ram" ]]; then
  frames=()
   for file in "$1"/*; do
     frames+=("$(<"$file")")
   done
   for i in "${!frames[@]}"; do
        render "${frames[$i]}"
   done
  else
   for file in "$1"/*; do
    render "$(<"$file")"
  done
  fi
}

start "assets/ascii" "assets/bad_apple.mp3"