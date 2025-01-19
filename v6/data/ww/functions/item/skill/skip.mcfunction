clear @s warped_fungus_on_a_stick{skill:1b,skip:1b}

execute if predicate ww:morning run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"跳過白天","color":"aqua","bold":true,"italic":false}'},Unbreakable:1b,skill:1b,skip:1b,unique:1b} 1
execute if predicate ww:night run give @s warped_fungus_on_a_stick{display:{Name:'{"text":"跳過夜晚","color":"aqua","bold":true,"italic":false}'},Unbreakable:1b,skill:1b,skip:1b,unique:1b} 1