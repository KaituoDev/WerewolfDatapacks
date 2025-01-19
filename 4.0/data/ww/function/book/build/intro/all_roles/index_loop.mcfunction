# context: @s = player
# storage: ww:temp allRolesData
# scores: %allRolesPage ww.var

execute unless data storage ww:temp allRolesData[0] run return 0

scoreboard players add %allRolesPage ww.var 1

function ww:book/build/_role_index_page with storage ww:temp allRolesData[0]
function ww:book/build/utils/_auto_page_break {maxLinesPerPage: 8}

data remove storage ww:temp allRolesData[0]
function ww:book/build/intro/all_roles/index_loop