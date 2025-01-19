# context: @s = player

# 1. remove all tags by looping through player's Tags array, and deleting one by one
function ww:player/tag/clear

# pre-game related tags:
# add player tag
tag @s add ww.player

# add has role tag if aleady has role
execute if function ww:player/flag/has_role run tag @s add ww.has_role

# add alive tag if was alive
execute if function ww:player/flag/is_alive run tag @s add ww.alive
#execute unless function ww:player/flag/is_alive unless function ww:player/flag/is_narrator run tag @s add ww.dead

# add narrator tag if is narrator
execute if function ww:player/flag/is_narrator run tag @s add ww.narrator

# add fool tag if is fool
execute if function ww:player/flag/is_fool run tag @s add ww.fool

# add mounted tag if is mounted
execute if function ww:player/flag/is_mounted run tag @s add ww.mounted

# add wolf_kind tag if is wolf
execute if function ww:player/flag/is_wolf run tag @s add ww.wolf_kind

# add harassed tag if is harrased
execute if function ww:player/flag/is_harassed run tag @s add ww.harassed

# add officer tag if is officer
execute if function ww:player/flag/is_officer run tag @s add ww.officer

# add lovers tag if is in love with someone else
execute if function ww:player/flag/is_lover run tag @s add ww.lover

# add pairingFinalized tag if has completed pairing process
execute if function ww:player/flag/is_pairing_finalized run tag @s add ww.pairingFinalized

# playerRole tags:
# try to obtain player's role
function ww:player/_get_state {name: 'playerRole'}

execute unless data storage ww:output playerState.id run return fail

# role object exists for this player

# 2. add tags based on the role object
data modify storage ww:temp addTagInput set value {}

# add role id
data modify storage ww:temp addTagInput.tag set from storage ww:output playerState.id
function ww:player/tag/_add with storage ww:temp addTagInput

# add campaign
data modify storage ww:temp addTagInput.tag set from storage ww:output playerState.campaign.id
function ww:player/tag/_add with storage ww:temp addTagInput