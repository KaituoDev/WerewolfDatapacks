data modify storage ww:memory SKILLS_INTRO set value { \
  "suit_up": { \
    name: "着装", \
    descriptions: ["穿上盔甲", "永久隐形", "加速", "追踪其他非同伴玩家", "冷却10秒"], \
    fool: ["技能冷却变20秒"] \
  }, \
  "suit_off": { \
    name: "脱装", \
    descriptions: ["脱下盔甲", "冷却10秒"], \
    fool: ["技能冷却变20秒"] \
  }, \
  "autopilot": { \
    name: "自动驾驶", \
    descriptions: ["坐上狼骑", "自动去追捕附近的敌对目标", "离开坐骑即可切回手动"], \
    fool: ["自动追捕同伙"] \
  }, \
  "friends_list": { \
    name: "同伙名单", \
    descriptions: ["显示所有同阵营的名字"], \
    fool: ["名单会随机产生", "因此不准确"] \
  }, \
  "rifle": { \
    name: "猎枪", \
    descriptions: ["瞄准玩家按下右键", "使其成为陪葬者"], \
    fool: ["你变成他的陪葬者"] \
  }, \
  "explosion": { \
    name: "自爆弹", \
    descriptions: ["炸死自己在内10格的一名不同阵营的玩家", "跳过投票直接进入夜晚", "第一天白天禁用"], \
    fool: ["只有炸到自己", "其他人继续投票"] \
  }, \
  "glow_up": { \
    name: "全体显形", \
    descriptions: ["全体玩家发光30秒"], \
    fool: ["全体发光七彩霓虹灯"] \
  }, \
  "hijack": { \
    name: "冒充身分", \
    descriptions: ["瞄准玩家按下右键", "换成对方的头颅"], \
    fool: ["公开表明正在冒充的身分"] \
  }, \
  "implant_bomb": { \
    name: "植入炸弹", \
    descriptions: ["瞄准玩家按下右键", "该玩家30秒后会被炸死", "在倒数完前进入夜晚不会爆", "可以透过票人的方式传炸弹"], \
    fool: ["炸弹黏到自己身上","而且传不了"] \
  }, \
  "blood_moon": { \
    name: "血月", \
    descriptions: ["以自身隔日死亡为条件", "跳过投票强制进入夜晚", "当晚狼人能力大幅提升"], \
    fool: ["发动后直接死亡", "不会跳过白天"] \
  }, \
  "pairing_book": { \
    name: "恋人配对", \
    descriptions: ["选择两名玩家成为恋人"], \
    fool: ["公布恋人组合"] \
  }, \
  "prophecy": { \
    name: "预言书", \
    descriptions: ["选择一名玩家","查看其阵营","查到怨灵阵营时使其升天"], \
    fool: ["显示的阵营是错的"] \
  }, \
  "poison_potion": { \
    name: "毒药", \
    descriptions: ["瞄准玩家按下右键","使其中毒","隔天白天死亡"], \
    fool: ["这是瓶有毒的药","(舔)","变成自己中毒"] \
  }, \
  "healing_potion": { \
    name: "解药", \
    descriptions: ["瞄准玩家按下右键","解开巫毒效果","并使其无敌10秒"], \
    fool: ["若该玩家有巫毒状态","则增加其巫毒层数","不过无敌效果还在"] \
  }, \
  "ninja_scroll": { \
    name: "忍法卷轴", \
    descriptions: ["选择一种忍术","预设随机", \
      "-化猫:变身猫咪10秒", \
      "-岩遁:8秒无敌, 并持续震飞5格内的玩家", \
      "-人遁:造出假人村民,自己隐形10秒", \
      "-雾遁:制造烟幕,自己隐形10秒", \
      "-蚁遁:变小10秒" \
    ], \
    fool: [ \
      "-化猫:全体变猫", \
      "-岩遁:没有无敌", \
      "-人遁:将数位玩家传过来,自己隐形", \
      "-雾遁:没有隐形", \
      "-蚁遁:变大10秒" \
    ] \
  }, \
  "ninjutsu_activate": { \
    name: "发动忍术", \
    descriptions: ["发动选定的卷轴效果"], \
    fool: ["无论选什么卷轴都是随机效果"] \
  }, \
  "ninjutsu_set": { \
    name: "忍术全套", \
    descriptions: ["获得所有忍术道具"], \
    fool: ["无"] \
  }, \
  "masochist_search": { \
    name: "寻找教徒", \
    descriptions: ["选择一名活玩家","若该玩家为抖M","则自己受到的伤害","都转移到该玩家身上"], \
    fool: ["查到抖M会公布名字", "同时自己受的伤害不会转移"] \
  }, \
  "size_reduce": { \
    name: "缩小", \
    descriptions: ["在白天将自己变小","并隐藏自己的皮肤15秒钟"], \
    fool: ["变大的同时变慢"] \
  }, \
  "sing": { \
    name: "唱歌", \
    descriptions: ["魅惑10格内的所有活玩家","使其受到大幅度缓速","并看向自已","自己则获得加速与无敌5秒"], \
    fool: ["大家一起加速"] \
  }, \
  "snipe": { \
    name: "狙击", \
    descriptions: ["瞄准玩家按下右键","若该玩家能被杀死","则击毙这名玩家","使用后自身会获得10s发光和缓慢"], \
    fool: ["打不中目标"] \
  }, \
  "shovel": { \
    name: "掘墓铲", \
    descriptions: ["挖起坟墓","继承该玩家的职业"], \
    fool: ["挖起来的职业变蠢职业"] \
  }, \
  "challenge": { \
    name: "决斗", \
    descriptions: ["瞄准玩家按下右键","若该玩家并非同阵营➡杀掉","若同阵营➡自杀","第一天白天禁用"], \
    fool: ["同阵营➡杀掉", "非同阵营➡自杀"] \
  }, \
  "guard": { \
    name: "守护领域", \
    descriptions: ["给予周围8格内的所有玩家","无敌与隐形5秒","并解除蛊毒状态"], \
    fool: ["效果附加发光8秒","并使范围内中蛊毒的玩家死亡"] \
  }, \
  "forensic": { \
    name: "鉴识科学", \
    descriptions: ["靠近墓碑点右键","获得嫌犯的部分名字","嫌犯名单为死者死时周围的玩家"], \
    fool: ["嫌犯名单一律显示未知"] \
  }, \
  "arousal": { \
    name: "色心", \
    descriptions: ["隐形30秒","加速30秒"], \
    fool: ["额外发光30秒"] \
  }, \
  "harass_list": { \
    name: "骚扰名单", \
    descriptions: ["显示已骚扰与未骚扰的名单"], \
    fool: ["所有玩家都会看到未骚扰的名单","已骚扰的不会泄漏"] \
  }, \
  "sprint": { \
    name: "冲刺", \
    descriptions: ["以极高的速度(速度V)", "冲刺5秒钟"], \
    fool: ["无"] \
  }, \
  "steal": { \
    name: "标记盗取目标", \
    descriptions: ["瞄准玩家按下右键", "在隔日与标记对象互换职业", "包含职业状态", "但偷不了警长"], \
    fool: ["技能不受影响", "但换过来的都是蠢职业"] \
  }, \
  "invisible_on": { \
    name: "进入隐形", \
    descriptions: ["进入隐形状态10秒", "冷却15秒"], \
    fool: ["附加发光10秒"] \
  }, \
  "voodoo_needle": { \
    name: "诅咒骨针", \
    descriptions: ["瞄准玩家按下右键", "增加其诅咒层术", "达3层即死", "并每晚自动增加1层"], \
    fool: ["插到自己身上"] \
  }, \
  "rigged_vote": { \
    name: "偷天换日", \
    descriptions: ["选择两位玩家", "白天投票结算时", "将其票数互换"], \
    fool: ["把选择的玩家票数","都抢过来","高票当选"] \
  }, \
  "holy_set": { \
    name: "特殊 - 神圣套装", \
    descriptions: ["获得圣剑","获得无敌与加速20秒"], \
    fool: ["无"] \
  }, \
  "za_warudo": { \
    name: "特殊 - 时间暂停", \
    descriptions: ["冻住10格内玩家的动作"], \
    fool: ["无"] \
  }, \
  "switch_all": { \
    name: "特殊 - 全体互换位置", \
    descriptions: ["全体互换位置"], \
    fool: ["无"] \
  }, \
  "switch": { \
    name: "代罪", \
    descriptions: ["与最远的玩家互换位置"], \
    fool: ["与最近的玩家互换位置"] \
  }, \
  "suit_up_real": { \
    name: "特殊 - 着装", \
    descriptions: ["穿上盔甲", "永久隐形", "赋予武器追踪其他非同伴玩家", "冷却10秒"], \
    fool: ["技能冷却变20秒"] \
  }, \
  "suit_off_real": { \
    name: "特殊 - 脱装", \
    descriptions: ["脱下盔甲", "但不会回收武器", "冷却10秒"], \
    fool: ["技能冷却变20秒"] \
  }, \
  "lure": { \
    name: "诱导", \
    descriptions: ["瞄准玩家按下右键", "转移所有狼人追踪的目标", "至指定玩家", "效果持续到该玩家死去", "或隔日自动清除"], \
    fool: ["目标变为自己"] \
  }, \
  "charm": { \
    name: "魅惑", \
    descriptions: ["吸引10格内的所有活玩家","使其缓缓地靠近自己"], \
    fool: ["把10格内的所有活玩家都往外推挤"] \
  }, \
  "imprisonment": { \
    name: "强制坐牢", \
    descriptions: ["瞄准玩家按下右键","使其停止移动10秒"], \
    fool: ["使自己停止移动5秒"] \
  }, \
  "question": { \
    name: "提问", \
    descriptions: ["选择一名玩家","再来询问系统关于","该玩家是否属于某一阵营","会得到是或否的回答"], \
    fool: ["显示的回答是反的"] \
  }, \
  "lunatic_sword": { \
    name: "疯人剑", \
    descriptions: ["砍向一名玩家","若该玩家为同阵营","则无事发生","若不同阵营则立即杀死对方","无视无敌"], \
    fool: ["无"] \
  }, \
  "send_gift": { \
    name: "发送礼物", \
    descriptions: ["选择一名玩家","并给予圣诞礼物的道具","礼物有三种:","煤炭","玩具","黄金"], \
    fool: ["送的礼物永远是煤炭"] \
  }, \
  "steal_gift": { \
    name: "偷窃礼物", \
    descriptions: ["瞄准玩家按下右键","受标记的玩家收到的圣诞礼物","都直接送给你","同一位玩家被多个人标记时","只有最后标记的那位有效"], \
    fool: ["自己收到的圣诞礼物都送给","最近一次成功标记的玩家"] \
  }, \
  "christmas_gift_coal": { \
    name: "圣诞礼物", \
    descriptions: ["右键开启，可能性有","煤炭：缓速+黑暗","玩具：加速","黄金：无敌并清除巫毒"], \
    fool: ["无"] \
  }, \
  "christmas_gift": { \
    name: "圣诞礼物", \
    descriptions: ["右键开启，可能性有","煤炭：缓速+黑暗","玩具：加速","黄金：无敌并清除巫毒"], \
    fool: ["无"] \
  }, \
}

data modify storage ww:memory GACHA_SKILLS set value [ \
  "suit_up","suit_up_real","autopilot","rifle","implant_bomb","glow_up", \
  "blood_moon","prophecy","poison_potion","healing_potion","ninjutsu_set","size_reduce", \
  "sing","snipe","sprint","shovel","challenge","guard","forensic","arousal","steal", \
  "invisible_on","voodoo_needle","holy_set","za_warudo","switch_all","switch", \
  "lure", "charm", "imprisonment", "question", "send_gift", "steal_gift" \
]

data modify storage ww:memory GACHA_SKILLS_NOTES set value { \
  prophecy: '请先使用一次「预言书」钓竿获得真正的书', \
  ninjutsu_set: '请先使用一次「忍术全套」获得卷轴与发动道具', \
  holy_set: '使用「神圣套装」时会获得圣剑与无敌和加速效果', \
  question: '请先使用一次「提问」钓竿获得真正的书', \
  send_gift: '请先使用一次「发送礼物」钓竿获得真正的书', \
}