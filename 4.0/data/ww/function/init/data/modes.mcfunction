# context: server

data modify storage ww:memory MODE_INTRO set value { \
  "CONQUER": { \
    name: "屠邊模式", \
    description: '[{"text":"當場上沒有怨靈, 尚有狼人, 同時人類方只剩一人時, 狼人陣營自動獲勝"}]', \
  }, \
  "MASSACRE": { \
    name: "屠城模式", \
    description: '[{"text":"狼人陣營的玩家需要殺死所有非狼人陣營的玩家"}]', \
  }, \
  "LUNATIC": { \
    name: "瘋人院模式", \
    description: '[{"text":"1. 既有結局無效，當只剩一種陣營時，該陣營獲勝\\n2. 狼人追蹤最近玩家，無分陣營或戀人，失去隊友名單\\n3. 有人死亡立即轉白天\\n4. 每晚所有玩家獲得「瘋人劍」：同陣營無效，異陣營則殺死，蠢蛋無副作用"}]', \
  }, \
  "TEAMING": { \
    name: "組隊模式", \
    description: '[{"text":""}]', \
  } \
}