# context: @s = player hit by deadly blow, on attacker = hitter

execute at @s run summon marker ~ ~ ~ {Tags:[ninjutsu_tree_swap]}

# tp self to attacker
tag @s add this
execute on attacker run tp @n[tag=this] @s
tag @s remove this

# to attacker to marker (self prev location)
execute on attacker run tp @n[tag=ninjutsu_tree_swap]

kill @n[tag=ninjutsu_tree_swap]