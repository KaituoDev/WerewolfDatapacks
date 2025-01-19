## CONTEXT: pair_a or pair_b player
## OUTPUT: storage ww:game actionbar.lovers

tag @s add this

execute as @a[tag=lovers] if score @s id = @p[tag=this] cupidPair run tag @s add currentLoverPair

execute if entity @a[tag=currentLoverPair] run data modify storage ww:game actionbar.lovers set value '[{"text":"配偶: ","color":"white","bold":false},{"selector":"@p[tag=currentLoverPair]","color":"gold","bold":true},"."]'

tag @s remove this

# currentLoverPair will be removed in ww:player/actionbar