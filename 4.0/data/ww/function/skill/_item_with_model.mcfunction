# context: @s = player
# inputs: {id, model, stack_size}

$function ww:skill/_get_intro {skillId: '$(id)'}
execute unless data storage ww:output skillIntro

data remove storage ww:temp skillItemInput
data modify storage ww:temp skillItemInput set from storage ww:output skillIntro
$data modify storage ww:temp skillItemInput.id set value '$(id)'
$data modify storage ww:temp skillItemInput.model set value '$(model)'
$data modify storage ww:temp skillItemInput.stack_size set value $(stack_size)
function ww:skill/__item_with_model with storage ww:temp skillItemInput