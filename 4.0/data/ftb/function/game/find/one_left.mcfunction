# context: @s = player[tag=!ww.has_role]
# location: at @s

tag @a[tag=ftb.this_finder] remove ftb.this_finder
tag @s add ftb.this_finder
function ww:chat/_dm {type: 'info', message: '僅剩一顆按鈕, 自動幫你按'}
execute as @n[tag=ftb.interaction] at @s run function ftb:transfer