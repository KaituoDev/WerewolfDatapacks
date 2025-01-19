function ww:skill/__init

effect give @a glowing 10 0 true

clear @s warped_fungus_on_a_stick{glow_all:1b} 1

execute if entity @s[tag=snow,tag=wolf] run function ww:role/wolf/snow/announce