## this assumes everyone already has id

scoreboard players enable @a[scores={id=1..}] voteTrigger

scoreboard players reset * officerVoteCount
scoreboard players reset * officerVote

scoreboard players set @a[scores={id=1..}] officerVoteCount 0
scoreboard players set @a[scores={id=1..}] officerVote 0

scoreboard objectives setdisplay sidebar officerVoteCount
scoreboard objectives setdisplay list officerVoteCount

clear @a written_book

bossbar set minecraft:officer_vote visible true
bossbar set minecraft:officer_vote players @a

execute store result bossbar minecraft:officer_vote max run scoreboard players operation %officer_vote var = %OFFICER_SESSION constant
execute store result bossbar minecraft:officer_vote value run scoreboard players get %officer_vote var

bossbar set minecraft:officer_vote name [{"text":"警長選舉倒數","color":"green","bold":true}," ",{"score":{"name":"%officer_vote","objective":"var"},"color":"gold","bold":true}]

title @a title {"text":"警長選舉開始"}

tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"投給你希望成為警長的人， 最高票者為第一任警長， 得票第二高者為第一順位繼承者， 以此類推...","color":"gold","bold":true}]

tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"所有人都選定後會立即開票","color":"white","bold":true}]

execute as @a[scores={id=1..}] run function ww:book/officer
execute as @a[tag=wolf] run function ww:item/skill/reveal/wolf

schedule function ww:session/officer/main_1s 1s
