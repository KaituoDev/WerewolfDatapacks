tellraw @a {"text":"<狼人陣營>","color":"red","bold":true}

execute if score %wolf pool matches 1.. run tellraw @a [{"text":"狼人: ","color":"white","bold":true},{"score":{"name":"%wolf","objective":"pool"},"color":"gold","bold":true}]

execute if score %black_wolf pool matches 1.. run tellraw @a [{"text":"黑狼王: ","color":"white","bold":true},{"score":{"name":"%black_wolf","objective":"pool"},"color":"gold","bold":true}]

execute if score %white_wolf pool matches 1.. run tellraw @a [{"text":"白狼王: ","color":"white","bold":true},{"score":{"name":"%white_wolf","objective":"pool"},"color":"gold","bold":true}]

execute if score %snow_wolf pool matches 1.. run tellraw @a [{"text":"雪狼: ","color":"white","bold":true},{"score":{"name":"%snow_wolf","objective":"pool"},"color":"gold","bold":true}]

execute if score %hijack_wolf pool matches 1.. run tellraw @a [{"text":"百變狼: ","color":"white","bold":true},{"score":{"name":"%hijack_wolf","objective":"pool"},"color":"gold","bold":true}]

execute if score %alpha_wolf pool matches 1.. run tellraw @a [{"text":"原初狼: ","color":"white","bold":true},{"score":{"name":"%alpha_wolf","objective":"pool"},"color":"gold","bold":true}]

execute if score %rage_wolf pool matches 1.. run tellraw @a [{"text":"暴走狼: ","color":"white","bold":true},{"score":{"name":"%rage_wolf","objective":"pool"},"color":"gold","bold":true}]