tag @s[tag=!fool] add villagerSave
tag @s[tag=fool] add villagerFailed 

# escape score keep tracks of how many times
# the player has used to escape skill
scoreboard players add @s escape 1

tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"你逃離了現場, 躲避所有今晚對你的攻擊"}]

clear @s written_book{villager:1b}