# context: @s = player | villager
# scores: %maxVoteCount ww.system
# inputs: {uuid}

$scoreboard players add @n[nbt={UUID:$(uuid)},predicate=ww:alive] ww.vote_summary 1

# adds additional vote if source player is officer
$execute if entity @s[tag=ww.officer] run \
  scoreboard players add @n[nbt={UUID:$(uuid)},predicate=ww:alive] ww.vote_summary 1

$scoreboard players operation %maxVoteCount ww.system > @n[nbt={UUID:$(uuid)},predicate=ww:alive] ww.vote_summary