# context: @s = player

function ww:player/bar/get_bossbar_id

data modify storage ww:temp validateBossbarInput set value {}
data modify storage ww:temp validateBossbarInput.id set from storage ww:output bossbarId
execute store success score %success ww.var run function ww:player/bar/_validate_bossbar with storage ww:temp validateBossbarInput

# bossbar already exists
execute if score %success ww.var matches 1 run return 1

# create ww.energy bar
function ww:player/bar/_create_bossbar with storage ww:temp validateBossbarInput