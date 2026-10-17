# context: @s = player
# inputs: {index}
# storage: pm:temp teleportInput

$data modify storage pm:temp teleportInput.location set from storage pm:memory NeighborhoodSpawnPoints[$(index)]
