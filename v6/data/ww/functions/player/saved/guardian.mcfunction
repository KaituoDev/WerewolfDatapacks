## Running as player saved by guardian
## CONTEXT: @s = victim/beneficiary

execute if entity @s[tag=dying] run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"selector":"@s","color":"green","bold":true},{"text":" 被守衛救了","color":"white","bold":false}]

execute if entity @s[tag=seer,tag=bewitched,tag=guardianClear] run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"守衛幫你解蠱, 可以正常獲得技能了"}]
execute if entity @s[tag=guardianClear] run tag @s remove bewitched

tag @s remove dying
tag @s remove guardianClear