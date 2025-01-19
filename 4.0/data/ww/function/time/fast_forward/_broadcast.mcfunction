# context: @s = player | villager
# inputs: {seconds, ms}

tag @s add this
$execute as @a run function ww:chat/_dm {type: 'rich_info', message: \
  '[ \
    {"selector":"@n[tag=this]","color":"yellow","bold":true}, \
    {"text":" 快進了 ","color":"white","bold":false}, \
    {"text":"$(seconds).$(ms)","color":"green","bold":true}, \
    {"text":" 秒","color":"white","bold":false} \
  ]' \
}
tag @s remove this