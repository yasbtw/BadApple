#!/bin/bash
# github.com/yasbtw

cd "$(dirname "${BASH_SOURCE}")" || exit 1

read -r -d '' text << 'EOF'
░█▀▄░█▀█░█▀▄░░░█▀█░█▀█░█▀█░█░░░█▀▀░█░█
░█▀▄░█▀█░█░█░░░█▀█░█▀▀░█▀▀░█░░░█▀▀░▀░▀
░▀▀░░▀░▀░▀▀░░░░▀░▀░▀░░░▀░░░▀▀▀░▀▀▀░▀░▀
                    github.com/@yasbtw
EOF

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
  for file in "$1"/*; do
    tput cup 0 0
    cat $file
    sleep 0.028
    tput ed
  done
}

start "assets/ascii" "assets/bad_apple.mp3"