# context: @s = player
# inputs: {id, custom_model_data}

$function ww:skill/_get_intro {skillId: '$(id)'}
execute unless data storage ww:output skillIntro

data remove storage ww:temp skillItemInput
data modify storage ww:temp skillItemInput set from storage ww:output skillIntro
$data modify storage ww:temp skillItemInput.id set value '$(id)'
$data modify storage ww:temp skillItemInput.custom_model_data set value $(custom_model_data)
function ww:skill/__item_with_custom_model_data with storage ww:temp skillItemInput