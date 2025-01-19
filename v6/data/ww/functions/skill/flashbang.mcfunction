playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 1 2 0.5

tag @s add this

effect give @a[tag=!this,distance=..10,tag=alive] blindness 10 0 true
effect give @a[tag=!this,distance=..10,tag=alive] slowness 10 3 true

tellraw @a[tag=!this,distance=..10,tag=alive] [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":" 你中了閃光彈, 失明緩速10秒"}]

tag @s remove this

clear @s warped_fungus_on_a_stick{flashbang:1b} 1

function ww:particles/flashbang