tellraw @a {"text":"<好人陣營>","color":"red","bold":true}

execute if score %hunter pool matches 1.. run tellraw @a [{"text":"獵人: ","color":"white","bold":true},{"score":{"name":"%hunter","objective":"pool"},"color":"gold","bold":true}]

execute if score %seer pool matches 1.. run tellraw @a [{"text":"預言家: ","color":"white","bold":true},{"score":{"name":"%seer","objective":"pool"},"color":"gold","bold":true}]

execute if score %witch pool matches 1.. run tellraw @a [{"text":"女巫: ","color":"white","bold":true},{"score":{"name":"%witch","objective":"pool"},"color":"gold","bold":true}]

execute if score %ninja pool matches 1.. run tellraw @a [{"text":"忍者: ","color":"white","bold":true},{"score":{"name":"%ninja","objective":"pool"},"color":"gold","bold":true}]

execute if score %trickster pool matches 1.. run tellraw @a [{"text":"詐欺師: ","color":"white","bold":true},{"score":{"name":"%trickster","objective":"pool"},"color":"gold","bold":true}]

execute if score %siren pool matches 1.. run tellraw @a [{"text":"人魚: ","color":"white","bold":true},{"score":{"name":"%siren","objective":"pool"},"color":"gold","bold":true}]

execute if score %masochist pool matches 1.. run tellraw @a [{"text":"抖M教徒: ","color":"white","bold":true},{"score":{"name":"%masochist","objective":"pool"},"color":"gold","bold":true}]

execute if score %sadist pool matches 1.. run tellraw @a [{"text":"抖S教主: ","color":"white","bold":true},{"score":{"name":"%sadist","objective":"pool"},"color":"gold","bold":true}]

execute if score %cupid pool matches 1.. run tellraw @a [{"text":"邱比特: ","color":"white","bold":true},{"score":{"name":"%cupid","objective":"pool"},"color":"gold","bold":true}]

execute if score %digger pool matches 1.. run tellraw @a [{"text":"掘墓者: ","color":"white","bold":true},{"score":{"name":"%digger","objective":"pool"},"color":"gold","bold":true}]

execute if score %knight pool matches 1.. run tellraw @a [{"text":"騎士: ","color":"white","bold":true},{"score":{"name":"%knight","objective":"pool"},"color":"gold","bold":true}]

execute if score %guardian pool matches 1.. run tellraw @a [{"text":"守衛: ","color":"white","bold":true},{"score":{"name":"%guardian","objective":"pool"},"color":"gold","bold":true}]


scoreboard players operation %temp var = %villager pool
execute if score %leftover pool matches 1.. run scoreboard players operation %temp var += %leftover pool

execute if score %temp var matches 1.. run tellraw @a [{"text":"村民: ","color":"white","bold":true},{"score":{"name":"%temp","objective":"var"},"color":"gold","bold":true}]