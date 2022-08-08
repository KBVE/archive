#!/usr/bin/env bash
./discord.sh \
  --webhook-url="$1" \
  --username "DockerWebHook" \
  --avatar "https://avatars.githubusercontent.com/u/110081661?v=4" \
  --text "$2" \
  --title "DockerWebHook" \
  --description "$3" \
  --color "0xFFFFFF" \
  --url "https://kbve.com/" \
  --author "discord.sh" \
  --author-url "https://kbve.com/u/h0lybyte" \
  --author-icon "https://avatars.githubusercontent.com/u/5571997" \
  --image "https://i.imgur.com/12jyR5Q.png" \
  --thumbnail "https://i.imgur.com/12jyR5Q.png" \
  --field "Author;kbvebot" \
  --field "Author;kbve" \
  --footer "KBVE" \
  --footer-icon "https://avatars.githubusercontent.com/u/5571997" \
  --timestamp