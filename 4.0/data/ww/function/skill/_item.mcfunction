# context: @s = player
# inputs: {id}

$function ww:skill/_get_intro {skillId: '$(id)'}
execute unless data storage ww:output skillIntro

data remove storage ww:temp skillItemInput
data modify storage ww:temp skillItemInput set from storage ww:output skillIntro
$data modify storage ww:temp skillItemInput.id set value '$(id)'
function ww:skill/__item with storage ww:temp skillItemInput