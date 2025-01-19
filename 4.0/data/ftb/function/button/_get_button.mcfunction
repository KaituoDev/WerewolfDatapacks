# context: @s = player
# inputs: {name}

clear @s *[custom_data~{"ftb.button":true}]
$item replace entity @s hotbar.4 with $(name)[ \
  unbreakable={show_in_tooltip:false},rarity="epic", \
  custom_data={"ftb.button":true}, \
  can_place_on={predicates:[{blocks:"#ftb:all"}],show_in_tooltip:false} \
] 1