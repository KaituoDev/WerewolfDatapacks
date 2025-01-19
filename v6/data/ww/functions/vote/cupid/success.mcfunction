## chat/info
## CONTEXT: @s = cupid, @p[tag=currentTarget] = player being paired

execute if entity @a[tag=currentTarget,tag=pairA] run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"你成功將 "},{"selector":"@p[tag=currentTarget]","color":"green","bold":true},{"text":" 配為戀人攻","color":"white","bold":false}]
execute if entity @a[tag=currentTarget,tag=pairB] run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"你成功將 "},{"selector":"@p[tag=currentTarget]","color":"green","bold":true},{"text":" 配為戀人受","color":"white","bold":false}]

# either message could show up twice if the cupid selects themselves as both pairA and pairB