# context: @s = player
# inputs: {id}
# scores: %allRolesPage ww.var

$function ww:role/_find_by_id {id: '$(id)'}


# modify createBookInput.rows
data modify storage ww:temp getRoleIntroInput set value {}
data modify storage ww:temp getRoleIntroInput.roleId set from storage ww:output roleObj.id
function ww:role/_get_intro with storage ww:temp getRoleIntroInput

data modify storage ww:temp rolesData set from storage ww:output roleIntro
data modify storage ww:temp rolesData.name set from storage ww:output roleObj.name
data modify storage ww:temp rolesData.campaign set from storage ww:output roleObj.campaign.name
data modify storage ww:temp rolesData.campaignColor set from storage ww:output roleObj.campaign.color
execute store result storage ww:temp rolesData.page int 1 run scoreboard players get %allRolesPage ww.var

# role name
function ww:book/build/intro/_index_row with storage ww:temp rolesData
