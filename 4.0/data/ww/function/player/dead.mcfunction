# context: @s = player | villager

scoreboard players reset @s ww.deaths
scoreboard players reset @s ww.bomb

gamemode spectator @s[type=player]
effect give @s invisibility infinite 0 true

# clear all ww.stealGiftSource
function ww:skill/steal_gift/reset

# create a grave
function ww:skill/shovel/grave/create

# death handling for villagers
execute if entity @s[type=villager] run function ww:ai/dead

# dismount if mounted
execute if entity @s[tag=ww.mounted] run function ww:skill/autopilot/dismount

function ww:player/_set_state {name: 'playerAlive', value: 0}
function ww:player/role/_remove_state {path: 'implantBombSource'}

function ww:player/tag/sanitize

team join ww.dead @s

# rerun elimination calculation
execute unless predicate ww:is_night run function ww:game/elimination/calculate

# chain reactions:

# pairing
execute if entity @s[tag=ww.lover] run function ww:skill/pairing_book/chain

# rifle target
function ww:skill/rifle/chain

# show control to navigate to alive AI
function ww:narrator/navigate/single_player

schedule function ww:stats/aggregate 1t replace
schedule function ww:ending/check 1t replace

# skip night for lunatic mode
execute if function ww:game/mode/is_lunatic if predicate ww:is_night run \
 schedule function ww:skill/lunatic_sword/skip_night 1t replace

# run scoreboard players set %lunaticSkipNight ww.system 1