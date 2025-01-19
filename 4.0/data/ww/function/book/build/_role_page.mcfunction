# context: @s = player
# inputs: {id}

$function ww:role/_find_by_id {id: '$(id)'}


# modify createBookInput.rows
data modify storage ww:temp getRoleIntroInput set value {}
data modify storage ww:temp getRoleIntroInput.roleId set from storage ww:output roleObj.id
function ww:role/_get_intro with storage ww:temp getRoleIntroInput

data modify storage ww:temp rolesData set from storage ww:output roleIntro
data modify storage ww:temp rolesData.name set from storage ww:output roleObj.name
data modify storage ww:temp rolesData.campaign set from storage ww:output roleObj.campaign.name
data modify storage ww:temp rolesData.campaignColor set from storage ww:output roleObj.campaign.color

# transform rolesData.notes from ["a","b"] -> ["a","\\n", "b"]
function ww:book/build/intro/_notes with storage ww:temp rolesData
data modify storage ww:temp rolesData.notes set from storage ww:output joinedNotes

# role name
function ww:book/build/intro/_header with storage ww:temp rolesData

# passive (notes)
execute if data storage ww:temp rolesData.notes[0] run function ww:book/build/intro/_passive with storage ww:temp rolesData

# skills
execute if data storage ww:temp rolesData.skills[0] run function ww:book/build/intro/_skills with storage ww:temp rolesData

