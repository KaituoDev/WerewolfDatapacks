# context: @s = player

clear @s written_book[minecraft:custom_data={"ww.book":"ww.intro.all.roles"}]

function ww:book/build/utils/_init { \
  title: '{"bold":true,"color":"aqua","text":"全職業介紹"}', \
  id: 'ww.intro.all.roles' \
}

# construct the role index page
data modify storage ww:temp allRolesData set from storage ww:memory ROLES
# %allRolesPage = ROLES.length / 8 + (ROLES.length % 8 > 0 ? 1 : 0)
execute store result score %allRolesPage ww.var run data get storage ww:temp allRolesData
scoreboard players set %divider ww.var 8
scoreboard players operation %remainder ww.var = %allRolesPage ww.var
scoreboard players operation %remainder ww.var %= %divider ww.var
scoreboard players operation %allRolesPage ww.var /= %divider ww.var
execute if score %remainder ww.var matches 1.. run scoreboard players add %allRolesPage ww.var 1
function ww:book/build/intro/all_roles/index_loop

function ww:book/build/utils/new_page

# construct the role page
data modify storage ww:temp allRolesData set from storage ww:memory ROLES
function ww:book/build/intro/all_roles/loop

# finalize createBookInput.pages
function ww:book/build/utils/sanitize_enumerated
function ww:book/build/utils/construct
function ww:book/build/utils/_create with storage ww:temp createBookInput