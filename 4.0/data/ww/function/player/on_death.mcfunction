# context: @s = player | villager

# scapegoat passive
execute if function ww:skill/masochist_search/scapegoat run return 0

# santa passive
execute if entity @s[tag=santa] run function ww:role/santa/on_killed

function ww:player/dead