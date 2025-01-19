# context: server

# when the game inits, adds player tag to all
# if one has a <god> tag, they will not have the player tag
# after that, add ww.alive to all predicate=ww:player

# note: player.cursor detection does not work in creative mode
execute unless predicate ww:is_our_map unless predicate ww:initiated as @a[gamemode=creative,predicate=!ww:has_config_item] run \
  function ww:config/item/board

# give all roles book
execute unless predicate ww:initiated as @a[predicate=!ww:has_roles_intro_book] run \
  function ww:book/all_roles

# give settings intro book
execute unless predicate ww:initiated as @a[predicate=!ww:has_settings_intro_book] run \
  function ww:book/settings

# any right clickable items
execute as @e[predicate=ww:player,scores={ww.skill=1..}] at @s run function ww:player/skill/main

# ingame
execute if predicate ww:started run function ww:game/main
  
# graceful clean
execute as @e[scores={ww.gracefulClean=1..}] at @s run function ww:game/graceful_clean
execute as @e[scores={ww.dummyTimer=1..}] run function ww:game/dummy_timer

# narrator switch
scoreboard players enable @a ww.narrator
execute as @a[scores={ww.narrator=1..}] run function ww:player/narrator

# edit map name
execute as @a if items entity @s weapon.* \
  minecraft:writable_book[minecraft:custom_data~{ww.edit_map_name:true}] if data entity @s \
  SelectedItem.components."minecraft:writable_book_content".pages[0].raw run function ww:config/board/action/map/edit/name

# initialize new joiners
execute unless predicate ww:started as @a[predicate=ww:is_first_timer] run function ww:first_timer

# remove ground items with id ww.intro.all.roles
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"ww.book":"ww.intro.all.roles"}}}}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"ww.book":"ww.intro.settings"}}}}]