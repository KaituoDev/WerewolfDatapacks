tellraw @a {"text":"<特殊>","color":"red","bold":true}

execute if score %fool pool matches 1.. run tellraw @a [{"text":"蠢蛋: ","color":"white","bold":true},{"score":{"name":"%fool","objective":"pool"},"color":"gold","bold":true}]