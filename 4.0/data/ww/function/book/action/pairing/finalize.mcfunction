# context: @s = player | villager, selections meet requirements

# go through each item in pairing
# for each player, set their role state "lovers" (array) to the others uuid
# sets current player (the player running the book) role state "pairingSelections" to the pairing array
# removes pairing role state from current player
# resets book and scoreboard trigger

execute store result score @s ww.pairingOrigin run scoreboard players add %current ww.pairingOrigin 1

function ww:player/role/get_state
data modify storage ww:temp pairing set from storage ww:output playerState.pairing
data modify storage ww:temp pairingClone set from storage ww:temp pairing
function ww:book/action/pairing/finalize/loop

# inform narrators
data modify storage ww:temp narratorInput set value {}
data modify storage ww:temp narratorInput.source set from entity @s UUID
execute store result storage ww:temp narratorInput.group int 1 run scoreboard players get @s ww.pairingOrigin
function ww:narrator/info/_pairing with storage ww:temp narratorInput

# show the list of players paired for the "cupid"
function ww:book/action/pairing/finalize/_broadcast with storage ww:temp narratorInput

tag @s add ww.pairingFinalized

function ww:ending/check