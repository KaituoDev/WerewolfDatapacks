# context: @s = player
# location: at the origin
# inputs {id, origin, pos}

$function ww:role/_find_by_id {id: '$(id)'}
$execute unless data storage ww:output roleObj run return run data merge block $(pos) { \
  front_text:{has_glowing_text:0b, messages: ['""','""','""','""'], color:"white"} \
}

$execute store result score %count ww.var run data get storage ww:memory pool.'$(id)'

data modify storage ww:temp poolCountMessage set value '""'
execute if score %count ww.var matches 1.. run \ 
  data modify storage ww:temp poolCountMessage set value \
    '{"score":{"objective":"ww.var","name":"%count"},"color":"green","bold":true}'

$data modify block $(pos) front_text set value { \
  has_glowing_text:0b, \
  messages: [ \
    '""', \
    '{"storage":"ww:output","nbt":"roleObj.name","color":"white","bold":true}', \
    '{"storage":"ww:temp","nbt":"poolCountMessage","interpret":true,"color":"green","bold":true}', \
    '{"text":"","clickEvent":{"action":"run_command","value":"function ww:config/board/action/_run {func: \\"ww:config/board/action/pool/_update\\", args: {id: \\"$(id)\\", origin: $(origin), pos: \\"$(pos)\\"}}"}}' \
  ] \
}

data remove storage ww:temp poolCountMessage
data remove storage ww:output roleObj