## INPUT: data storage ww:game chat.radio
## INPUT: %interpret var

execute if score %interpret var matches 0 run tellraw @a [{"text":"[","color":"white","bold":true},{"text":"公開頻道","color":"aqua"},{"text":"]","color":"white"}," ",{"storage":"ww:game","nbt":"chat.radio","interpret":false}]

execute if score %interpret var matches 1 run tellraw @a [{"text":"[","color":"white","bold":true},{"text":"公開頻道","color":"aqua"},{"text":"]","color":"white"}," ",{"storage":"ww:game","nbt":"chat.radio","interpret":true}]