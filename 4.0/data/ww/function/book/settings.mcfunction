clear @s written_book[minecraft:custom_data={"ww.book":"ww.intro.settings"}]

give @s written_book[item_name='{"color":"aqua","text":"设定说明手册","bold":true}',minecraft:custom_data={"ww.book":"ww.intro.settings"},written_book_content={title:"",author:"",pages:[ \
  '[{"text":"[地图设定]","color":"blue","clickEvent":{"action":"change_page","value":"2"}}, \
    {"text":"\\n\\n"}, \
    {"text":"[模式设定]","color":"blue","clickEvent":{"action":"change_page","value":"3"}}, \
    {"text":"\\n\\n"}, \
    {"text":"[细节设定]","color":"blue","clickEvent":{"action":"change_page","value":"4"}}, \
    {"text":"\\n\\n"}, \
    {"text":"[趣味设定]","color":"blue","clickEvent":{"action":"change_page","value":"5"}}, \
    {"text":"\\n\\n"}, \
    {"text":"[切换旁白]","color":"blue","clickEvent":{"action":"change_page","value":"6"}}, \
    {"text":"\\n\\n"} \
  ]', \
  '[{"text":"[随机地图]","color":"blue","clickEvent":{"action":"change_page","value":"7"}}, \
    {"text":"\\n\\n"}, \
    {"text":"[显示详情]","color":"blue","clickEvent":{"action":"change_page","value":"8"}} \
  ]', \
  '[{"text":"[屠边式]","color":"blue","clickEvent":{"action":"change_page","value":"9"}}, \
    {"text":"\\n\\n"}, \
    {"text":"[屠城式]","color":"blue","clickEvent":{"action":"change_page","value":"10"}}, \
    {"text":"\\n\\n"}, \
    {"text":"[疯人院]","color":"blue","clickEvent":{"action":"change_page","value":"11"}} \
  ]', \
  '[{"text":"[投票道具]","color":"blue","clickEvent":{"action":"change_page","value":"12"}} \
  ]', \
  '[{"text":"[技能大乱斗]","color":"blue","clickEvent":{"action":"change_page","value":"13"}}, \
    {"text":"\\n\\n"}, \
    {"text":"[找职业按钮]","color":"blue","clickEvent":{"action":"change_page","value":"19"}}, \
    {"text":"\\n\\n"}, \
    {"text":"[警长]","color":"blue","clickEvent":{"action":"change_page","value":"14"}}, \
    {"text":"\\n\\n"}, \
    {"text":"[蠢蛋]","color":"blue","clickEvent":{"action":"change_page","value":"15"}}, \
    {"text":"\\n\\n"}, \
    {"text":"[AI]","color":"blue","clickEvent":{"action":"change_page","value":"16"}}, \
    {"text":"\\n\\n"}, \
    {"text":"[恋人配偶数]","color":"blue","clickEvent":{"action":"change_page","value":"17"}} \
  ]', \
  '[{"text":"切换旁白","color":"blue","bold":true},{"text":"\\n\\n"},{"text":"每场游戏开始前，所有旁白玩家将不参与游戏，自动切为旁观者，再点一次这个告示牌，或打 /trigger ww.narrator 即可变回游戏玩家","color":"black","bold":false}]', \
  '[{"text":"随机地图","color":"blue","bold":true},{"text":"\\n\\n"},{"text":"每场游戏开始前，系统会随机选择一张地图","color":"black","bold":false}]', \
  '[{"text":"显示详情","color":"blue","bold":true},{"text":"\\n\\n"},{"text":"显示关于当前选定的地图资讯, 当使用资料包在别的世界时, 会额外出现编辑地图名与地图起始点的图示","color":"black","bold":false}]', \
  '[{"text":"屠边式","color":"blue","bold":true},{"text":"\\n\\n"},{"text":"当场上没有怨灵, 尚有狼人, 同时人类方只剩一人时, 狼人阵营自动获胜","color":"black","bold":false}]', \
  '[{"text":"屠城式","color":"blue","bold":true},{"text":"\\n\\n"},{"text":"狼人阵营必须杀光其他阵营方可获胜","color":"black","bold":false}]', \
  '[{"text":"疯人院","color":"blue","bold":true},{"text":"\\n\\n"},{"nbt":"MODE_INTRO.LUNATIC.description","storage": "ww:memory","color":"black","bold":false, "interpret": true}]', \
  '[{"text":"投票道具","color":"blue","bold":true},{"text":"\\n\\n"},{"text":"暴民剑:\\n透过攻击其他玩家或AI投票, 远距版本可以打到很远的人\\n\\n穿墙投票:\\n对其他玩家点右键来投票, 顾名思义即便中间隔着方块, 也可以投到对方\\n\\n投票书:\\n打开书选择书中的玩家进行投票","color":"black","bold":false}]', \
  '[{"text":"技能大乱斗","color":"blue","bold":true},{"text":"\\n\\n"},{"text":"每天晚上额外获得随机职业的技能, 若随机选到和当前持有的技能相同时, 只会留一个","color":"black","bold":false}]', \
  '[{"text":"警长","color":"blue","bold":true},{"text":"\\n\\n"},{"text":"白天投票时1票当2票算","color":"black","bold":false}]', \
  '[{"text":"蠢蛋","color":"blue","bold":true},{"text":"\\n\\n"},{"text":"使用技能时会出现意料之外的效果, 详情请见职业介绍书","color":"black","bold":false}]', \
  '[{"text":"AI","color":"blue","bold":true},{"text":"\\n\\n"},{"text":"游戏开始时会召唤设定数量的村民, 狼人AI会召唤替身攻击其他玩家, 白天也会参与投票, 玩家使用技能的对象也可以指向这些AI","color":"black","bold":false}]', \
  '[{"text":"恋人配偶数","color":"blue","bold":true},{"text":"\\n\\n"},{"text":"可调整一组恋人的定义, 例如设定为3时, 邱比特必须选择3位玩家才算配对成功, 而3人中任一方死, 其他2人一起陪葬\\n\\n在选择的过程中若已选择的玩家死亡, 则需重选其他活着的玩家","color":"black","bold":false}]', \
  '[{"text":"恋人配偶数 (续)","color":"blue","bold":true},{"text":"\\n\\n"},{"text":"在选择的过程中若已选择的玩家已经和其他人配为恋人时, 则需重选其他活着的玩家\\n\\n最低为2, 无上限, 如果设定超过总玩家人数, 邱比特就永远无法完成配对, 请注意","color":"black","bold":false}]', \
  '[{"text":"找职业按纽","color":"blue","bold":true},{"text":"\\n\\n"},{"text":"所有玩家藏按钮一分钟, 过后每颗按钮会赋予职业, 先抢先赢","color":"black","bold":false}]' \
]}] 1