execute store success score %is_god var if predicate ww:god

execute if score %is_god var matches 1 run tag @s remove god
execute if score %is_god var matches 0 run tag @s add god

scoreboard players reset @s god

execute if score %is_god var matches 0 run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"你成為了上帝視角, 並不再參與遊戲。 想重返遊戲請再打一次 /trigger god"}]

execute if score %is_god var matches 1 run tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"你不再是上帝視角, 將參與遊戲。 想成為旁觀者請再打一次 /trigger god"}]