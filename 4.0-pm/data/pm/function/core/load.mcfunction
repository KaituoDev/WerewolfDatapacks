#function pm:core/destroy

scoreboard objectives add TP_PAD_CD dummy

data modify storage pm:memory MansionTeleportLocations set value [ \
  '5197 167 5629 0 0', \
  '5197 144 5629 0 0', \
  '5173 137 5661 0 0', \
  '5216 137 5589 0 0' \
]

# Spawn points for the neighborhood map. Each entry is 'x y z yaw pitch', and one
# is picked at random for every player when the game starts.
data modify storage pm:memory NeighborhoodSpawnPoints set value [ \
  '-791 64 150 180 0', \
  '-801 64 38 0 0', \
  '-862 66 38 -90 0', \
  '-882 68 119 -90 0' \
]