# context: @s = player | villager

execute store result score %curses ww.var run function ww:skill/voodoo_needle/get_stacks

execute if score %curses ww.var matches 3.. run function ww:player/death/curse