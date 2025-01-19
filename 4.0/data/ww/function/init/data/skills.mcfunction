data modify storage ww:memory SKILLS_INTRO set value { \
  "suit_up": { \
    name: "著裝", \
    descriptions: ["穿上盔甲", "永久隱形", "賦予武器追蹤其他非同伴玩家", "冷卻10秒"], \
    fool: ["技能冷卻變20秒"] \
  }, \
  "suit_off": { \
    name: "脫裝", \
    descriptions: ["脫下盔甲", "但不會回收武器", "冷卻10秒"], \
    fool: ["技能冷卻變20秒"] \
  }, \
  "autopilot": { \
    name: "自動駕駛", \
    descriptions: ["坐上狼騎", "自動去追捕附近的敵對目標", "離開坐騎即可切回手動"], \
    fool: ["自動追捕同夥"] \
  }, \
  "friends_list": { \
    name: "同夥名單", \
    descriptions: ["顯示所有同陣營的名字"], \
    fool: ["名單會隨機產生", "因此不準確"] \
  }, \
  "rifle": { \
    name: "獵槍", \
    descriptions: ["瞄準玩家按下右鍵", "使其成為陪葬者"], \
    fool: ["你變成他的陪葬者"] \
  }, \
  "explosion": { \
    name: "自爆彈", \
    descriptions: ["炸死自己在內10格的一名不同陣營的玩家", "跳過投票直接進入夜晚"], \
    fool: ["只有炸到自己", "其他人繼續投票"] \
  }, \
  "glow_up": { \
    name: "全體顯形", \
    descriptions: ["全體玩家發光30秒"], \
    fool: ["全體發光七彩霓虹燈"] \
  }, \
  "hijack": { \
    name: "冒充身分", \
    descriptions: ["瞄準玩家按下右鍵", "換成對方的頭顱"], \
    fool: ["公開表明正在冒充的身分"] \
  }, \
  "implant_bomb": { \
    name: "植入炸彈", \
    descriptions: ["瞄準玩家按下右鍵", "該玩家30秒後會被炸死", "在倒數完前進入夜晚不會爆", "可以透過票人的方式傳炸彈"], \
    fool: ["炸彈黏到自己身上","而且傳不了"] \
  }, \
  "blood_moon": { \
    name: "血月", \
    descriptions: ["以自身隔日死亡為條件", "跳過投票強制進入夜晚", "當晚狼人能力大幅提升"], \
    fool: ["發動後直接死亡", "不會跳過白天"] \
  }, \
  "pairing_book": { \
    name: "戀人配對", \
    descriptions: ["選擇兩名玩家成為戀人"], \
    fool: ["公布戀人組合"] \
  }, \
  "prophecy": { \
    name: "預言書", \
    descriptions: ["選擇一名玩家","查看其陣營","查到怨靈陣營時使其升天"], \
    fool: ["顯示的陣營是錯的"] \
  }, \
  "poison_potion": { \
    name: "毒藥", \
    descriptions: ["瞄準玩家按下右鍵","使其中毒","隔天白天死亡"], \
    fool: ["這是瓶有毒的藥","(舔)","變成自己中毒"] \
  }, \
  "healing_potion": { \
    name: "解藥", \
    descriptions: ["瞄準玩家按下右鍵","解開巫毒效果","並使其無敵10秒"], \
    fool: ["若該玩家有巫毒狀態","則增加其巫毒層數","不過無敵效果還在"] \
  }, \
  "ninja_scroll": { \
    name: "忍法卷軸", \
    descriptions: ["選擇一種忍術","預設隨機", \
      "-化貓:變身貓咪10秒", \
      "-岩遁:8秒無敵, 並持續震飛5格內的玩家", \
      "-人遁:造出假人村民,自己隱形10秒", \
      "-霧遁:製造煙幕,自己隱形10秒", \
      "-蟻遁:變小10秒" \
    ], \
    fool: [ \
      "-化貓:全體變貓", \
      "-岩遁:沒有無敵", \
      "-人遁:將數位玩家傳過來,自己隱形", \
      "-霧遁:沒有隱形", \
      "-蟻遁:變大10秒" \
    ] \
  }, \
  "ninjutsu_activate": { \
    name: "發動忍術", \
    descriptions: ["發動選定的卷軸效果"], \
    fool: ["無論選什麼卷軸都是隨機效果"] \
  }, \
  "ninjutsu_set": { \
    name: "忍術全套", \
    descriptions: ["獲得所有忍術道具"], \
    fool: ["無"] \
  }, \
  "masochist_search": { \
    name: "尋找教徒", \
    descriptions: ["選擇一名活玩家","若該玩家為抖M","則自己受到的傷害","都轉移到該玩家身上"], \
    fool: ["查到抖M會公布名字", "同時自己受的傷害不會轉移"] \
  }, \
  "sing": { \
    name: "唱歌", \
    descriptions: ["魅惑10格內的所有活玩家","使其受到大幅度緩速","並看向自已","自己則獲得加速與無敵5秒"], \
    fool: ["大家一起加速"] \
  }, \
  "shovel": { \
    name: "掘墓鏟", \
    descriptions: ["挖起墳墓","繼承該玩家的職業"], \
    fool: ["挖起來的職業變蠢職業"] \
  }, \
  "challenge": { \
    name: "決鬥", \
    descriptions: ["瞄準玩家按下右鍵","若該玩家並非同陣營➡殺掉","若同陣營➡自殺"], \
    fool: ["同陣營➡殺掉", "非同陣營➡自殺"] \
  }, \
  "guard": { \
    name: "守護領域", \
    descriptions: ["給予周圍8格內的所有玩家","無敵與隱形5秒","並解除蠱毒狀態"], \
    fool: ["效果附加發光8秒","並使範圍內中蠱毒的玩家死亡"] \
  }, \
  "forensic": { \
    name: "鑑識科學", \
    descriptions: ["靠近墓碑點右鍵","獲得嫌犯的部分名字","嫌犯名單為死者死時周圍的玩家"], \
    fool: ["嫌犯名單一律顯示未知"] \
  }, \
  "arousal": { \
    name: "色心", \
    descriptions: ["隱形30秒","加速30秒"], \
    fool: ["額外發光30秒"] \
  }, \
  "harass_list": { \
    name: "騷擾名單", \
    descriptions: ["顯示已騷擾與未騷擾的名單"], \
    fool: ["所有玩家都會看到未騷擾的名單","已騷擾的不會洩漏"] \
  }, \
  "steal": { \
    name: "標記盜取目標", \
    descriptions: ["瞄準玩家按下右鍵", "在隔日與標記對象互換職業", "包含職業狀態", "但偷不了警長"], \
    fool: ["技能不受影響", "但換過來的都是蠢職業"] \
  }, \
  "invisible_on": { \
    name: "進入隱形", \
    descriptions: ["進入隱形狀態10秒", "冷卻15秒"], \
    fool: ["附加發光10秒"] \
  }, \
  "voodoo_needle": { \
    name: "詛咒骨針", \
    descriptions: ["瞄準玩家按下右鍵", "增加其詛咒層術", "達3層即死", "並每晚自動增加1層"], \
    fool: ["插到自己身上"] \
  }, \
  "rigged_vote": { \
    name: "偷天換日", \
    descriptions: ["選擇兩位玩家", "白天投票結算時", "將其票數互換"], \
    fool: ["把選擇的玩家票數","都搶過來","高票當選"] \
  }, \
  "holy_set": { \
    name: "特殊 - 神聖套裝", \
    descriptions: ["獲得聖劍","獲得無敵與加速20秒"], \
    fool: ["無"] \
  }, \
  "za_warudo": { \
    name: "特殊 - 時間暫停", \
    descriptions: ["凍住10格內玩家的動作"], \
    fool: ["無"] \
  }, \
  "switch_all": { \
    name: "特殊 - 全體互換位置", \
    descriptions: ["全體互換位置"], \
    fool: ["無"] \
  }, \
  "switch": { \
    name: "代罪", \
    descriptions: ["與最遠的玩家互換位置"], \
    fool: ["與最近的玩家互換位置"] \
  }, \
  "suit_up_real": { \
    name: "特殊 - 著裝", \
    descriptions: ["穿上盔甲", "永久隱形", "賦予武器追蹤其他非同伴玩家", "冷卻10秒"], \
    fool: ["技能冷卻變20秒"] \
  }, \
  "suit_off_real": { \
    name: "特殊 - 脫裝", \
    descriptions: ["脫下盔甲", "但不會回收武器", "冷卻10秒"], \
    fool: ["技能冷卻變20秒"] \
  }, \
  "lure": { \
    name: "誘導", \
    descriptions: ["瞄準玩家按下右鍵", "轉移所有狼人追蹤的目標", "至指定玩家", "效果持續到該玩家死去", "或隔日自動清除"], \
    fool: ["目標變為自己"] \
  }, \
  "charm": { \
    name: "魅惑", \
    descriptions: ["吸引10格內的所有活玩家","使其緩緩地靠近自己"], \
    fool: ["把10格內的所有活玩家都往外推擠"] \
  }, \
  "imprisonment": { \
    name: "強制坐牢", \
    descriptions: ["瞄準玩家按下右鍵","使其停止移動10秒","當時間剩餘不到20秒時無法使用"], \
    fool: ["使自己停止移動5秒"] \
  }, \
  "question": { \
    name: "提問", \
    descriptions: ["選擇一名玩家","再來詢問系統關於","該玩家是否屬於某一陣營","會得到是或否的回答"], \
    fool: ["顯示的回答是反的"] \
  }, \
  "lunatic_sword": { \
    name: "瘋人劍", \
    descriptions: ["砍向一名玩家","若該玩家為同陣營","則無事發生","若不同陣營則立即殺死對方","無視無敵"], \
    fool: ["無"] \
  }, \
  "send_gift": { \
    name: "發送禮物", \
    descriptions: ["選擇一名玩家","並給予聖誕禮物的道具","禮物有三種:","煤炭","玩具","黃金"], \
    fool: ["送的禮物永遠是煤炭"] \
  }, \
  "steal_gift": { \
    name: "偷竊禮物", \
    descriptions: ["瞄準玩家按下右鍵","受標記的玩家收到的聖誕禮物","都直接送給你","同一位玩家被多個人標記時","只有最後標記的那位有效"], \
    fool: ["自己收到的聖誕禮物都送給","最近一次成功標記的玩家"] \
  }, \
  "christmas_gift_coal": { \
    name: "聖誕禮物", \
    descriptions: ["右鍵開啟，可能性有","煤炭：緩速+黑暗","玩具：加速","黃金：無敵"], \
    fool: ["無"] \
  }, \
  "christmas_gift": { \
    name: "聖誕禮物", \
    descriptions: ["右鍵開啟，可能性有","煤炭：緩速+黑暗","玩具：加速","黃金：無敵"], \
    fool: ["無"] \
  }, \
}

data modify storage ww:memory GACHA_SKILLS set value [ \
  "suit_up","suit_up_real","autopilot","rifle","implant_bomb","glow_up", \
  "blood_moon","prophecy","poison_potion","healing_potion", "ninjutsu_set", \
  "sing","shovel","challenge","guard","forensic","arousal","steal", \
  "invisible_on","voodoo_needle","holy_set","za_warudo","switch_all","switch", \
  "lure", "charm", "imprisonment", "question", "send_gift", "steal_gift" \
]

data modify storage ww:memory GACHA_SKILLS_NOTES set value { \
  prophecy: '請先使用一次「預言書」釣竿獲得真正的書', \
  ninjutsu_set: '請先使用一次「忍術全套」獲得卷軸與發動道具', \
  holy_set: '使用「神聖套裝」時會獲得聖劍與無敵和加速效果', \
  question: '請先使用一次「提問」釣竿獲得真正的書', \
  send_gift: '請先使用一次「發送禮物」釣竿獲得真正的書', \
}