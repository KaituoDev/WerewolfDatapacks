# context: @s = player

# show a list of players on the same campaign
# for alpha_wolf -> also shows alpha wolf list
# for fool -> include some players from other campaign, and store that in playerRoleState
# count total amount of players of same campaign, store random players with limit into list

execute if entity @s[tag=ww.fool] run \
  function ww:skill/friends_list/randomize
execute if entity @s[tag=ww.fool] run return run function ww:skill/friends_list/fool_list

execute if entity @s[tag=bads] run function ww:skill/friends_list/campaign/bads
execute if entity @s[tag=goods] run function ww:skill/friends_list/campaign/goods
execute if entity @s[tag=spirits] run function ww:skill/friends_list/campaign/spirits