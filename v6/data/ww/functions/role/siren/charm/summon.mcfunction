## CONTEXT: @e[tag=this,limit=1] = current siren, @e[tag=this_victim,limit=1] = victim

summon armor_stand ^ ^ ^0.01 {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:0b,Invisible:1b,Tags:["this_as","attraction"],DisabledSlots:4144959}

scoreboard players operation @e[type=armor_stand,tag=attraction,tag=this_as] sirenSource = @e[tag=this,limit=1] id
scoreboard players operation @e[type=armor_stand,tag=attraction,tag=this_as] sirenCharming = @e[tag=this_victim,limit=1] id