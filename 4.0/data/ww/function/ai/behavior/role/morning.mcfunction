# context: server

execute if score %days ww.system matches 2.. if score %ai_can_vote ww.system matches 1 unless score @s ww.ai.elimination_used matches 1 run return run \
 function ww:ai/behavior/elimination

execute if score %ai_can_ff ww.system matches 1 unless score @s ww.ai.fast_forward_used matches 1 run return run \
 function ww:ai/behavior/fast_forward

execute if entity @s[tag=white_wolf] unless score @s ww.ai.explosion_used matches 1 run return run \
 function ww:ai/behavior/role/skill/explosion

execute if entity @s[tag=bomb_wolf] unless score @s ww.ai.implant_bomb_used matches 1 run return run \
 function ww:ai/behavior/role/skill/implant_bomb

execute if entity @s[tag=bloody_wolf,scores={ww.kills=1..}] unless score @s ww.ai.blood_moon_used matches 1 run return run \
 function ww:ai/behavior/role/skill/blood_moon

execute if entity @s[tag=cupid,tag=!ww.pairingFinalized] unless score @s ww.ai.pairing_attempted matches 1 run return run \
 function ww:ai/behavior/role/skill/pairing