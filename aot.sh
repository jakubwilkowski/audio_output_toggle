#!/bin/bash

CURRENT_SOURCE=$(SwitchAudioSource -a -t output -c)
SOURCES=("Słuchawki zewnętrzne" "Głośniki (MacBook Air)" "Słuchawki zewnętrzne")
PERFORM_CHANGE=0

for i in "${SOURCES[@]}"
do
  if [ $PERFORM_CHANGE -gt 0 ]; then
    cmd="/usr/local/Cellar/switchaudio-osx/1.0.0/SwitchAudioSource -s \"$i\""
    eval "$cmd"
    break
  fi

  if [ "$i" = "$CURRENT_SOURCE" ]; then
    PERFORM_CHANGE=1
  fi
done

