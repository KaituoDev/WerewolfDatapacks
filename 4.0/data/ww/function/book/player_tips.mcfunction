# context: @s = player

function ww:player/_get_state {name: 'playerRole'}
execute unless data storage ww:output playerState run return fail

# take back the copy the player may still hold from another role
clear @s written_book[minecraft:custom_data={"ww.book":"ww.intro.tips"}]

# look up the tips written for the current role
data modify storage ww:temp getTipsInput set value {}
data modify storage ww:temp getTipsInput.roleId set from storage ww:output playerState.id
function ww:role/_get_tips with storage ww:temp getTipsInput

# nothing written for this role yet, so do not hand out an empty book
execute unless data storage ww:output roleTips.goal run return fail

function ww:book/build/utils/_init { \
  title: '{"bold":true,"color":"aqua","text":"职业技巧"}', \
  id: 'ww.intro.tips' \
}

# what this role is supposed to do
data modify storage ww:temp tipHeaderInput set value {}
data modify storage ww:temp tipHeaderInput.name set from storage ww:output playerState.name
data modify storage ww:temp tipHeaderInput.color set from storage ww:output playerState.campaign.color
data modify storage ww:temp tipHeaderInput.goal set from storage ww:output roleTips.goal
function ww:book/build/intro/_tips_header with storage ww:temp tipHeaderInput

# one row per tip
data modify storage ww:temp tipList set from storage ww:output roleTips.tips
scoreboard players set %tipIndex ww.var 0
function ww:book/build/intro/tips/loop
data remove storage ww:temp tipList

# finalize createBookInput.pages
function ww:book/build/utils/sanitize_enumerated
function ww:book/build/utils/construct
data modify storage ww:temp createBookInput.slot set value 'hotbar.6'
function ww:book/build/utils/_item_replace with storage ww:temp createBookInput
