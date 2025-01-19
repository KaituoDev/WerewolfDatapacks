# context: @s = player
# inputs: {id}
# output: 1 = has item, 0 = no item

$execute if items entity @s container.* *[custom_data~{$(id):true}] run return 1

return 0