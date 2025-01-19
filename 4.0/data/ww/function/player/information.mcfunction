# context: @s = player with info score

# data modify storage ww:temp getRoleInput set value {}
# execute store result storage ww:temp getPersonaInput.index int 1 run scoreboard players get @s ww.role
# function ww:role/_find_by_index with storage ww:temp getPersonaInput

# tellraw @s [ \
#   {"text":"你是 "}, \
#   {"nbt":"personaObj.name", "storage":"ww:output","bold":true,"color":"aqua"}
# ]