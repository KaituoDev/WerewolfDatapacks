# context: @s = player

execute unless function ww:game/validate run return fail

xp set @a 0 levels
xp set @a 0 points
scoreboard players set %isGameInitiated ww.system 1
scoreboard players set %lunaticSkipNight ww.system 0

tag @a add ww.player
# definition of player is has player tag and no narrator tag
clear @a
gamemode adventure @a[predicate=ww:player]
gamemode spectator @a[predicate=ww:narrator]

function ww:game/teleport_all

# begins find the button game mode if enabled
execute if entity @a[predicate=ww:player] if function ww:config/flag/find_the_button unless score %hasRanOnce ftb.system matches 1 run \
  return run function ftb:game/init

# summon NPCs, need to summon after game/reset
# since it removes playerAlive states
function ww:ai/init

# normal game start, as long as ai is not enabled
# because after ai is enabled, after creation, it will auto run game init
execute unless function ww:config/flag/is_ai_enabled run schedule function ww:game/init 1s