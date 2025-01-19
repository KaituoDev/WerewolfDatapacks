## CONTEXT: @e[tag=this,limit=1] = player to add tags, @s = marker or aec with tags to check

execute if entity @s[tag=wolf] as @e[tag=this,limit=1] run function ww:role/wolf/assign
execute if entity @s[tag=white_wolf] as @e[tag=this,limit=1] run function ww:role/wolf/white/assign
execute if entity @s[tag=black_wolf] as @e[tag=this,limit=1] run function ww:role/wolf/black/assign
execute if entity @s[tag=snow_wolf] as @e[tag=this,limit=1] run function ww:role/wolf/snow/assign
execute if entity @s[tag=hijack_wolf] as @e[tag=this,limit=1] run function ww:role/wolf/hijack/assign
execute if entity @s[tag=alpha_wolf] as @e[tag=this,limit=1] run function ww:role/wolf/alpha/assign
execute if entity @s[tag=rage_wolf] as @e[tag=this,limit=1] run function ww:role/wolf/rage/assign

execute if entity @s[tag=white,tag=wolf] as @e[tag=this,limit=1] run function ww:role/wolf/white/assign
execute if entity @s[tag=black,tag=wolf] as @e[tag=this,limit=1] run function ww:role/wolf/black/assign
execute if entity @s[tag=snow,tag=wolf] as @e[tag=this,limit=1] run function ww:role/wolf/snow/assign
execute if entity @s[tag=hijack,tag=wolf] as @e[tag=this,limit=1] run function ww:role/wolf/hijack/assign

execute if entity @s[tag=hunter] as @e[tag=this,limit=1] run function ww:role/hunter/assign
execute if entity @s[tag=seer] as @e[tag=this,limit=1] run function ww:role/seer/assign
execute if entity @s[tag=witch] as @e[tag=this,limit=1] run function ww:role/witch/assign
execute if entity @s[tag=ninja] as @e[tag=this,limit=1] run function ww:role/ninja/assign
execute if entity @s[tag=trickster] as @e[tag=this,limit=1] run function ww:role/trickster/assign
execute if entity @s[tag=siren] as @e[tag=this,limit=1] run function ww:role/siren/assign
execute if entity @s[tag=cupid] as @e[tag=this,limit=1] run function ww:role/cupid/assign
execute if entity @s[tag=masochist] as @e[tag=this,limit=1] run function ww:role/masochist/assign
execute if entity @s[tag=sadist] as @e[tag=this,limit=1] run function ww:role/sadist/assign
execute if entity @s[tag=digger] as @e[tag=this,limit=1] run function ww:role/digger/assign
execute if entity @s[tag=knight] as @e[tag=this,limit=1] run function ww:role/knight/assign
execute if entity @s[tag=guardian] as @e[tag=this,limit=1] run function ww:role/guardian/assign
execute if entity @s[tag=villager] as @e[tag=this,limit=1] run function ww:role/villager/assign

execute if entity @s[tag=wraith] as @e[tag=this,limit=1] run function ww:role/wraith/assign
execute if entity @s[tag=voodoo] as @e[tag=this,limit=1] run function ww:role/voodoo/assign
execute if entity @s[tag=bewitcher] as @e[tag=this,limit=1] run function ww:role/bewitcher/assign

tag @e[tag=this,limit=1] add has_role