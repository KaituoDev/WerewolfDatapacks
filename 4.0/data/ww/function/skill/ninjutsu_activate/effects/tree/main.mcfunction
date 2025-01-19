# context: @s = player

scoreboard players remove @s ww.ninjaTree 1

tag @s add this
execute at @s as @e[predicate=ww:alive,tag=!this,distance=..5,nbt={OnGround:1b}] at @s run \
  function ww:skill/ninjutsu_activate/effects/tree/knockback
execute at @s as @e[tag=ww.mount,distance=..5,nbt={OnGround:1b}] at @s run \
  function ww:skill/ninjutsu_activate/effects/tree/knockback
execute at @s as @e[tag=ww.killer_ai,type=zombified_piglin,distance=..5,nbt={OnGround:1b}] at @s run \
  function ww:skill/ninjutsu_activate/effects/tree/knockback
tag @s remove this

execute if score @s ww.ninjaTree matches ..0 run clear @s *[custom_data~{ninja_stick:true}]