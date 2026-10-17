# context: server

# Tips shown in the "职业技巧" book, one entry per role.
# Each entry is a list of two or three sentences that only someone who has
# played the role would know. Roles that are not listed here get no book at
# all, so it is fine to add them a few at a time. Do not put a double quote
# inside a tip, it would break the json that the book is built from.

data modify storage ww:memory ROLES_TIPS set value { \
  "seer": [ \
    "积极查杀怨灵！怨灵存活时，谨慎公开自己的身份，你是怨灵的第一攻击目标。", \
    "小心雪狼，他们会被显示为人类阵营。", \
    "在被狼杀死的前一瞬间使用代罪换位，有机会让狼误杀队友。" \
  ], \
  "black_wolf": [ \
    "如有必要，用猎枪锁定怨灵，然后让队友杀死你，可以杀死夜晚无敌的怨灵。" \
  ], \
  "white_wolf": [ \
    "如果你在白天被票到且无法反票，直接自爆可以保证一换一。", \
    "如有必要，可以用自爆带走夜晚无敌的怨灵" \
  ], \
  "snow_wolf": [ \
    "预言家查验你时会显示为好人！卧底在人类中伺机而动。", \
    "全体发光可以轻松找出隐身的怨灵" \
  ], \
  "bloody_wolf": [ \
    "如果你在白天被票到且无法反票，且手中有血月技能，可以直接开启血月直接进入夜晚。" \
  ], \
  "cupid": [ \
    "绑定情侣后，你和你的CP将成为单独的阵营！寻求他们的保护。", \
    "残局绑定情侣可以产生意想不到的效果。" \
  ], \
  "hunter": [ \
    "如有必要，用猎枪锁定怨灵，然后想办法被杀，可以杀死夜晚无敌的怨灵。" \
  ], \
  "ninja": [ \
    "临近白天时，使用蚁化卷轴，可以出其不意票到敌方。" \
  ], \
  "trickster": [ \
    "狼人们以为你是队友！穿上装备混入狼群，找出真狼。" \
  ], \
  "masochist": [ \
    "可以在白天票人，吸引别人来票你让你被票出局获胜。" \
  ], \
  "siren": [ \
    "临近白天时，歌唱控住狼人，可以在白天票他。" \
  ], \
  "knight": [ \
    "在夜晚保全自己，白天对敌人发起决斗！" \
  ], \
  "guardian": [ \
    "使用群体隐身保护身边的人类队友。" \
  ], \
  "hentai": [ \
    "残局时色狼极强！人越少越要大胆骚扰。" \
  ], \
  "santa": [ \
    "你发出的黄金可以解除巫毒！用这个技能保护被诅咒的人类队友。" \
  ] \
}
