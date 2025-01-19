# context: @s = player

clear @s *[custom_data~{mask:true}]
effect clear @s invisibility
function ww:chat/_dm {type: 'info', message: '已解除百变狼幻象'}