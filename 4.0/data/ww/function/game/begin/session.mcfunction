# context: server

bossbar set ww:ai_counter visible false
bossbar set ww:assignment visible false
scoreboard players set %started ww.system 1

execute as @e[predicate=ww:player] run function ww:player/tag/sanitize
# remove all remaining markers
kill @e[tag=ww.role_assignment]

# assign officers
execute store result score %officers ww.var run data get storage ww:memory config.OFFICER_COUNT
data modify storage ww:temp assignInput set value {}
execute store result storage ww:temp assignInput.count int 1 run scoreboard players get %officers ww.var
execute if score %officers ww.var matches 1.. run function ww:game/assign/_officers with storage ww:temp assignInput

# assign fools
execute store result score %fools ww.var run data get storage ww:memory config.FOOL_COUNT
data modify storage ww:temp assignInput set value {}
execute store result storage ww:temp assignInput.count int 1 run scoreboard players get %fools ww.var
execute if score %fools ww.var matches 1.. run function ww:game/assign/_fools with storage ww:temp assignInput

# clean up
data remove storage ww:temp assignInput

function ww:stats/game_start

execute if function ww:config/flag/is_ai_enabled as @a run function ww:chat/_dm { \
  type: 'rich_info', \
  message: '[{"text":"本局的AI有: ","color":"white","bold":false},{"selector":"@e[predicate=ww:alive,type=villager]","color":"green","bold":true}]' \
}

function ww:time/init
function ww:game/bar/init

schedule function ww:ending/check 1s