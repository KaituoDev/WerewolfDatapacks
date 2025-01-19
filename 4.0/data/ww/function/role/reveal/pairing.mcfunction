# context: @s = player | villager, @p[tag=this] = player reading

data modify storage ww:temp revealPairingInput set value {}
execute store result storage ww:temp revealPairingInput.group int 1 run \
 scoreboard players get @s ww.pairingOrigin

function ww:role/reveal/_pairing with storage ww:temp revealPairingInput