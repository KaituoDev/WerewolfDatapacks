# context: @s = player

clear @s *[minecraft:custom_data~{elimination_vote:true}]

execute store result score %index ww.var run data get storage ww:memory config.VOTE_ITEM_TYPE

execute if score %index ww.var matches 0 run \
  give @s netherite_sword[item_name='{"bold":true,"color":"gold","text":"暴民剑"}',unbreakable={},rarity="epic",custom_data={elimination_vote: true}] 1

execute if score %index ww.var matches 1 run \
  give @s netherite_sword[item_name='{"bold":true,"color":"gold","text":"远距暴民剑"}',unbreakable={},rarity="epic",custom_data={elimination_vote: true},attribute_modifiers={modifiers:[{id:"entity_interaction_range",type:"entity_interaction_range",amount:1000,operation:"add_value",slot:"mainhand"}],show_in_tooltip:false}] 1

execute if score %index ww.var matches 2 run \ 
  give @s warped_fungus_on_a_stick[ \
    item_name='{"bold":true,"color":"gold","text":"穿墙投票"}', \
    unbreakable={show_in_tooltip:false},rarity="epic", \
    custom_data={function: "ww:game/elimination/variation/passthrough", elimination_vote: true}, \
    attribute_modifiers={modifiers:[{id:"entity_interaction_range",type:"entity_interaction_range",amount:-5,operation:"add_value",slot:"mainhand"}],show_in_tooltip:false} \
  ] 1
  
execute if score %index ww.var matches 3 run \
  scoreboard players enable @s ww.elimination
execute if score %index ww.var matches 3 run \
  function ww:queue/_add {task: 'book/elimination'}

clear @s *[minecraft:custom_data~{elimination_regret:true}]
give @s warped_fungus_on_a_stick[item_model="barrier",item_name='[{"text":"警","color":"#FFC0CB","bold":true,"obfuscated":true},{"bold":true,"color":"red","obfuscated":false,"text":"反悔"},{"text":"告","color":"#FFC0CB","obfuscated":true}]',unbreakable={},rarity="epic",custom_data={function: "ww:game/elimination/regret", elimination_regret: true}] 1