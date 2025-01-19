# context: @s = player | villager | other entity

# 1. get marker uuid
function ww:player/_get_state {name: 'playerZaWarudoOrigin'}

# 2. remove marker
data modify storage ww:temp removeMarkerInput set value {}
data modify storage ww:temp removeMarkerInput.uuid set from storage ww:output playerState
function ww:skill/za_warudo/_remove_marker with storage ww:temp removeMarkerInput

# 3. reset score
scoreboard players reset @s ww.za_warudo

# 4. remove any iron bar block displays around the player
kill @e[type=block_display,tag=ww.imprisonment.display,distance=..4]