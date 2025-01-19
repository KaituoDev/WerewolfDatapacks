# context: @s = villager, hit by some weapon
# only used for player hit villager detection

# 1. try to obtain attacker's uuid
# 2. if such value does not exist, return
# 3. check if hurttime has value, return if not
# 4. execute on attacker and run save

execute store result score %hurtTime ww.var run data get entity @s HurtTime
execute unless score %hurtTime ww.var matches 1.. run return fail

# clear hurt time
data modify entity @s HurtTime set value 0s

# record attacker
function ww:player/record_last_attacker

tag @s add this
# killer weapon handler
execute on attacker if predicate ww:killer_weapon run function ww:game/hit_villager/killer_weapon
execute on attacker if entity @s[tag=ww.killer_ai,type=zombified_piglin] run function ww:game/hit_villager/ai_autopilot

# elimination vote handler
execute on attacker if predicate ww:elimination_vote run function ww:game/hit_villager/elimination

# player autopilot
execute on attacker if entity @s[tag=ww.mount] on passengers run function ww:game/hit_villager/autopilot

# hentai hit
execute on attacker if entity @s[tag=hentai] run function ww:game/hit_villager/harassed

# holy sword
execute on attacker if predicate ww:holy_sword run function ww:game/hit_villager/holy_sword

# lunatic sword
execute on attacker if predicate ww:lunatic_sword run function ww:game/hit_villager/lunatic_sword

tag @s remove this