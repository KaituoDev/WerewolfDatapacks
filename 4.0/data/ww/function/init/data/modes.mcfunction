# context: server

data modify storage ww:memory MODE_INTRO set value { \
  "CONQUER": { \
    name: "屠边模式", \
    description: '[{"text":"当场上没有怨灵, 尚有狼人, 同时人类方只剩一人时, 狼人阵营自动获胜"}]', \
  }, \
  "MASSACRE": { \
    name: "屠城模式", \
    description: '[{"text":"狼人阵营的玩家需要杀死所有非狼人阵营的玩家"}]', \
  }, \
  "LUNATIC": { \
    name: "疯人院模式", \
    description: '[{"text":"1. 既有结局无效，当只剩一种阵营时，该阵营获胜\\n2. 狼人追踪最近玩家，无分阵营或恋人，失去队友名单\\n3. 有人死亡立即转白天\\n4. 每晚所有玩家获得「疯人剑」：同阵营无效，异阵营则杀死，蠢蛋无副作用"}]', \
  }, \
  "TEAMING": { \
    name: "组队模式", \
    description: '[{"text":""}]', \
  } \
}