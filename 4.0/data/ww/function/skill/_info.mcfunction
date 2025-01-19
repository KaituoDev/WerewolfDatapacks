# context: @s = player
# inputs: {id}

$function ww:chat/_dm {type: 'rich_info', message: \
  '[{"text":"你获得了随机技能 - ","color":"white","bold":false},{"nbt":"SKILLS_INTRO.$(id).name","storage":"ww:memory","color":"gold","bold":true}]' \
}

$execute if data storage ww:memory GACHA_SKILLS_NOTES.$(id) run \
  function ww:chat/_dm {type: 'rich_warn', message: \
   '[{"storage":"ww:memory","nbt":"GACHA_SKILLS_NOTES.$(id)","color":"white","bold":false}]' \
  }