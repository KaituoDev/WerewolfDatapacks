tellraw @a {"text":"<怨靈陣營>","color":"red","bold":true}

execute if score %wraith pool matches 1.. run tellraw @a [{"text":"怨靈: ","color":"white","bold":true},{"score":{"name":"%wraith","objective":"pool"},"color":"gold","bold":true}]

execute if score %voodoo pool matches 1.. run tellraw @a [{"text":"巫毒女孩: ","color":"white","bold":true},{"score":{"name":"%voodoo","objective":"pool"},"color":"gold","bold":true}]

execute if score %bewitcher pool matches 1.. run tellraw @a [{"text":"蠱惑師: ","color":"white","bold":true},{"score":{"name":"%bewitcher","objective":"pool"},"color":"gold","bold":true}]