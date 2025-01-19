# context: @s = dead player | villager

data modify storage ww:temp pairingDeathChainInput set value {}
execute store result storage ww:temp pairingDeathChainInput.group int 1 run \
 scoreboard players get @s ww.pairingGroup

function ww:skill/pairing_book/chain/_death with storage ww:temp pairingDeathChainInput