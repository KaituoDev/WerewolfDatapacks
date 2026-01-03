# context: @s = player
# storage: ww:temp allRolesData

execute unless data storage ww:temp allRolesData[0] run return 0

function ww:book/build/utils/new_page
function ww:book/build/_role_page with storage ww:temp allRolesData[0]
function ww:book/build/utils/new_page

data remove storage ww:temp allRolesData[0]
function ww:book/build/intro/all_roles/loop