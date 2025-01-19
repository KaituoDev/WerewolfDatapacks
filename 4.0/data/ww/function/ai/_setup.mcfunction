# context: @s = villager
# inputs: {index}

tag @s add ww.player
# ww.alive tag is added during game/assign

team join ww.players @s

effect give @s resistance infinite 4 true

# indicies are counted in descending order
$data modify storage ww:temp setAINameInput set value {"name":"村民$(index)"}

function ww:ai/get_random_name
execute if data storage ww:output randomAIName run \
  data modify storage ww:temp setAINameInput.name set from storage ww:output randomAIName

function ww:ai/_setup_name with storage ww:temp setAINameInput
data modify entity @s CustomNameVisible set value 1b

# function ww:player/_set_state {name: 'playerAlive', value: 1}
$function ww:player/_set_state {name: 'aiIndex', value: $(index)}

# lock profession and offer
data merge entity @s {VillagerData:{level:99,profession:"minecraft:farmer",type:"minecraft:snow"},Offers:{Recipes:[{maxUses:1,priceMultiplier:100f,specialPrice:1000,buy:{id:"minecraft:bedrock",count:1},buyB:{id:"minecraft:structure_void",count:1},sell:{id:"minecraft:netherite_axe",count:99,components:{"minecraft:max_stack_size":99,"minecraft:custom_name":'{"bold":true,"color":"red","italic":false,"text":"紅色斧頭"}',"minecraft:unbreakable":{},"minecraft:rarity":"epic","minecraft:food":{nutrition:1000,saturation:1000,can_always_eat:true,eat_seconds:1}}}}]}}