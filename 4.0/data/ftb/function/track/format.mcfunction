# context: @s = interaction, @n[tag=this] = player
# storage: ftb:temp display

execute store result score %X ftb.var run data get entity @s Pos[0]
execute store result score %Y ftb.var run data get entity @s Pos[1]
execute store result score %Z ftb.var run data get entity @s Pos[2]

execute store result score %dX ftb.var run data get entity @n[tag=this] Pos[0]
execute store result score %dY ftb.var run data get entity @n[tag=this] Pos[1]
execute store result score %dZ ftb.var run data get entity @n[tag=this] Pos[2]

scoreboard players operation %dX ftb.var -= %X ftb.var
scoreboard players operation %dY ftb.var -= %Y ftb.var
scoreboard players operation %dZ ftb.var -= %Z ftb.var

scoreboard players operation %dX ftb.var *= %dX ftb.var
scoreboard players operation %dY ftb.var *= %dY ftb.var
scoreboard players operation %dZ ftb.var *= %dZ ftb.var

scoreboard players operation %input ftb.var = %dX ftb.var
scoreboard players operation %input ftb.var += %dY ftb.var
scoreboard players operation %input ftb.var += %dZ ftb.var

data modify storage ftb:temp sqrtInput set value {}
execute store result storage ftb:temp sqrtInput.value int 1 run \
  scoreboard players get %input ftb.var

function ftb:utils/_sqrt with storage ftb:temp sqrtInput

data modify storage ftb:temp formatted set value {}
data modify storage ftb:temp formatted.name set from entity @s CustomName
data modify storage ftb:temp formatted.distance set from storage ftb:output sqrt
data modify storage ftb:temp display append from storage ftb:temp formatted