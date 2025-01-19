## INPUT: data storage ww:game chat.radio
## INPUT: %interpret var
## not including the sender name, because trickster may be found through this

execute if score %interpret var matches 0 run tellraw @a[scores={onWolfList=1..}] [{"text":"[","color":"white","bold":true},{"text":"狼人頻道","color":"red"},{"text":"]","color":"white"}," ",{"storage":"ww:game","nbt":"chat.radio","interpret":false}]

execute if score %interpret var matches 1 run tellraw @a[scores={onWolfList=1..}] [{"text":"[","color":"white","bold":true},{"text":"狼人頻道","color":"red"},{"text":"]","color":"white"}," ",{"storage":"ww:game","nbt":"chat.radio","interpret":true}]