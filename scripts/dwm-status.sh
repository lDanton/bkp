print_song_info() {
  song_info="$(ncmpcpp --now-playing '{%a - %t}' | head -c 50)"
  if ! $song_info ; then
    song_info="Not playing."
  fi
  echo "${song_info}"
}

while true
do
        xsetroot -name "$(print_song_info) | $(date +%H:%M)"
done

