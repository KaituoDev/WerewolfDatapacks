# context: @s = player | villager

execute if entity @s[tag=ww.pairingFinalized] run return 0
scoreboard players enable @s ww.pairing
function ww:queue/_add {task: 'book/pairing'}