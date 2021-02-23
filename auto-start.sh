# App you want to start :
apps=(
  "/snap/bin/gitkraken"
  "/snap/bin/space"
  "/snap/bin/spotify"
)

# Which workspace to assign your wanted App :
workspaces=(
  "4: 4 "
  "3: 3 "
  "5: 5 "
)
# "1: 1 "
# "2: 2 "
# "3: 3 "
# "4: 4 "
# "5: 5 "
# "6: 6 "
# "7: 7 "
# "8: 8 "
# "9: 9 "
# "10: 10 "

screens=(
  "DisplayPort-3"
  "DisplayPort-3"
  "DisplayPort-3"
)

for iwin in ${!apps[*]}
do
  i3-msg workspace ${workspaces[$iwin]}  # move in wanted workspace
  i3-msg move workspace to output ${screens[$iwin]}
  ${apps[$iwin]} & # start the wanted app
  sleep 1
done
