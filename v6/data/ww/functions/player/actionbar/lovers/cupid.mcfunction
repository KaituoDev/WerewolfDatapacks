## CONTEXT: cupid player
## OUTPUT: storage ww:game actionbar.lovers
### NOT IN USE ANYMORE
### Because the current cupid player could be paired by other cupids as well
### Which may need another storage nbt to set and show

scoreboard players set %success var 0
execute if entity @s[tag=pairedA,tag=pairedB] run scoreboard players set %success var 1

tag @s add this

execute as @a[tag=lovers] if score @s cupidSource = @p[tag=this] id run tag @s add currentTarget

execute if score %success var matches 1 run data modify storage ww:game actionbar.lovers set value '[{"text":"戀人組合: "},{"selector":"@p[tag=currentTarget,tag=pairA]","color":"gold","bold":true},{"text":" 與 ","color":"white","bold":false},{"selector":"@p[tag=currentTarget,tag=pairB]","color":"gold","bold":true}]'

tag @s remove this
tag @a remove currentTarget