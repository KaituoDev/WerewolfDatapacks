# context: @s = player | villager fool, @s = @n[tag=this]

execute at @s as @e[predicate=ww:alive,distance=1..10,tag=!this,nbt={OnGround:1b}] at @s \
 facing entity @n[tag=this] feet rotated ~ 0 positioned ^ ^ ^-0.15 rotated as @s \
 if block ^ ^ ^ #ww:transparent if block ^ ^1 ^ #ww:transparent run \
 tp @s ~ ~ ~ ~ 0