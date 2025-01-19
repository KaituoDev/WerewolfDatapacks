## CONTEXT: @s = cupid, @p[tag=currentTarget] = player being paired

tag @s add thisAngel

execute as @a[scores={id=1..},tag=!currentTarget] if score @s cupidSource = @p[tag=thisAngel] id run tag @s add otherPair
scoreboard players operation @p[tag=currentTarget] cupidPair = @p[tag=otherPair] id
scoreboard players operation @p[tag=otherPair] cupidPair = @p[tag=currentTarget] id

tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"你成功將 "},{"selector":"@p[tag=currentTarget]","color":"green","bold":true},{"text":" 與 ","color":"white","bold":false},{"selector":"@p[tag=otherPair]","color":"green","bold":true},{"text":" 配對在了一起, 他們現在成為生命共同體","color":"white","bold":false}]

tellraw @p[tag=currentTarget] [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":" 你被邱比特與 ","color":"white","bold":false},{"selector":"@p[tag=otherPair]","color":"green","bold":true},{"text":" 配對在了一起, 成了生命共同體","color":"white","bold":false}]

tellraw @p[tag=otherPair] [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":" 你被邱比特與 ","color":"white","bold":false},{"selector":"@p[tag=currentTarget]","color":"green","bold":true},{"text":" 配對在了一起, 成了生命共同體","color":"white","bold":false}]

execute if entity @a[tag=currentTarget,tag=bads] if entity @a[tag=otherPair,tag=bads] run function ww:role/cupid/switch/bads
execute if entity @a[tag=currentTarget,tag=wraiths] if entity @a[tag=otherPair,tag=wraiths] run function ww:role/cupid/switch/wraiths

execute if entity @s[tag=fool] run tellraw @a [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"selector":"@s","bold":true,"color":"#ffc0cb"},{"text":" 成功將 "},{"selector":"@p[tag=currentTarget]","color":"green","bold":true},{"text":" 與 ","color":"white","bold":false},{"selector":"@p[tag=otherPair]","color":"green","bold":true},{"text":" 配對在了一起, 他們現在成為生命共同體","color":"white","bold":false}]

tag @s remove thisAngel
tag @a remove otherPair