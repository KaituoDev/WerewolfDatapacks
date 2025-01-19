# context: @s = player | villager

execute as @a run function ww:chat/_dm {type: 'rich_info', \
  message: '[{"text":"忍者發動了 ","color":"white","bold":false},{"text":"霧遁","color":"green","bold":true}]' \
}
# summons markers with tag ww.ninjaSmokePoint
# and attach score ww.dummyTimer of 200
# scoreboard players add @s ww.ninjaSmoke 200
scoreboard players add @s[tag=!ww.fool] ww.forceInvis 200
execute at @s summon marker run function ww:skill/ninjutsu_activate/effects/smoke/setup