execute store result bossbar minecraft:officer_vote value run scoreboard players remove %officer_vote var 1
execute if score %officer_vote var matches 1.. run schedule function ww:session/officer/main_1s 1s

effect give @a invisibility 1000000 0 true
effect give @a night_vision 1000000 0 true

bossbar set minecraft:officer_vote name [{"text":"警長選舉倒數","color":"green","bold":true}," ",{"score":{"name":"%officer_vote","objective":"var"},"color":"gold","bold":true}]

# early calculate if everyone has voted
execute if score %officer_vote var matches 1.. unless entity @a[scores={officerVote=..0}] run function ww:session/officer/calculate

execute if score %officer_vote var matches ..0 run function ww:session/officer/calculate