data modify storage ww:memory ROLES_INTRO set value { \
  "werewolf": { \
    notes: [], \
    skills: [ {id: "suit_up"}, {id: "suit_off"}, {id: "autopilot"}, {id: "friends_list"} ] \
  }, \
  "black_wolf": { \
    notes: [], \
    skills: [ {id: "suit_up"}, {id: "suit_off"}, {id: "autopilot"}, {id: "friends_list"}, {id: "rifle"} ] \
  }, \
  "white_wolf": { \
    notes: [], \
    skills: [ {id: "suit_up"}, {id: "suit_off"}, {id: "autopilot"}, {id: "friends_list"}, {id: "explosion"} ] \
  }, \
  "snow_wolf": { \
    notes: ["被预言书查中会显示人类阵营"], \
    skills: [ {id: "suit_up"}, {id: "suit_off"}, {id: "autopilot"}, {id: "friends_list"}, {id: "glow_up"} ] \
  }, \
  "hijack_wolf": { \
    notes: ["使预言书玩家名变难以阅读", "所有玩家强制穿皮革装与玩家头颅", "直到场上没有百变狼"], \
    skills: [ {id: "suit_up"}, {id: "suit_off"}, {id: "autopilot"}, {id: "friends_list"}, {id: "hijack"} ] \
  }, \
  "alpha_wolf": { \
    notes: ["目标是杀光所有非原初狼的玩家", "同伙名单会额外显示原初狼名单"], \
    skills: [ {id: "suit_up"}, {id: "suit_off"}, {id: "autopilot"}, {id: "friends_list"} ] \
  }, \
  "rage_wolf": { \
    notes: ["杀的玩家越多速度越快"], \
    skills: [ {id: "suit_up"}, {id: "suit_off"}, {id: "autopilot"}, {id: "friends_list"} ] \
  }, \
  "bomb_wolf": { \
    notes: [], \
    skills: [ {id: "suit_up"}, {id: "suit_off"}, {id: "autopilot"}, {id: "friends_list"}, {id: "implant_bomb"} ] \
  }, \
  "bloody_wolf": { \
    notes: ["杀完玩家后自动获得血月技能"], \
    skills: [ {id: "suit_up"}, {id: "suit_off"}, {id: "autopilot"}, {id: "friends_list"}, {id: "blood_moon"} ] \
  }, \  
  "seer_wolf": { \
    notes: ["查验名单不共享"], \
    skills: [ {id: "suit_up"}, {id: "suit_off"}, {id: "autopilot"}, {id: "friends_list"}, {id: "prophecy"} ] \
  }, \
  "charm_wolf": { \
    notes: [], \
    skills: [ {id: "suit_up"}, {id: "suit_off"}, {id: "autopilot"}, {id: "friends_list"}, {id: "charm"} ] \
  }, \
  "sniper_wolf": { \
    notes: ["不能变身为狼","没有近战武器", "每天夜晚只能用枪狙击最多一个人"], \
    skills: [ {id: "suit_up"}, {id: "suit_off"}, {id: "autopilot"}, {id: "friends_list"}, {id: "snipe"} ] \
  }, \
  "bolt": { \
    notes: ["每天白天和晚上", "都能冲刺一次"], \
    skills: [ {id: 'sprint'} ] \
  }, \
  "cupid": { \
    notes: ["选择恋人组合", "当场上只剩下恋人时就算恋人胜利","邱比特活着的话也算胜利", "恋人任一方死去", "另一人也会陪葬"], \
    skills: [ {id: 'pairing_book'} ] \
  }, \
  "seer": { \
    notes: ["预言家查验名单不共享"], \
    skills: [ {id: 'prophecy'}, {id: 'switch'} ] \
  }, \
  "witch": { \
    notes: [], \
    skills: [ {id: 'poison_potion'}, {id: 'healing_potion'} ] \
  }, \
  "hunter": { \
    notes: [], \
    skills: [ {id: 'rifle'} ] \
  }, \
  "exorcist": { \
    notes: ["用净化水晶击中狼人", "可以将狼人净化为诈欺师"], \
    skills: [ {id: 'exorcise'} ] \
  }, \
  "ninja": { \
    notes: ["隐形时速度提升"], \
    skills: [ {id: 'ninja_scroll'}, {id: 'ninjutsu_activate'} ] \
  }, \
  "nils": { \
    notes: ["在隐身或缩小时投票", "不会公布自己的名字"], \
    skills: [ {id: 'size_reduce'}] \
  }, \
  "trickster": { \
    notes: ["武器不会杀死人"], \
    skills: [ {id: "suit_up"}, {id: "suit_off"} ] \
  }, \
  "masochist": { \
    notes: ["白天成为票数最多者立即获胜"], \
    skills: [] \
  }, \
  "sadist": { \
    notes: [], \
    skills: [ {id: 'masochist_search'} ] \
  }, \
  "siren": { \
    notes: [], \
    skills: [ {id: 'sing'} ] \
  }, \
  "digger": { \
    notes: ["玩家死时会产生坟墓", "只有掘墓者能看得到坟墓"], \
    skills: [ {id: 'shovel'} ] \
  }, \
  "knight": { \
    notes: [], \
    skills: [ {id: 'challenge'} ] \
  }, \
  "guardian": { \
    notes: [], \
    skills: [ {id: 'guard'} ] \
  }, \
  "detective": { \
    notes: ["玩家死后会留下线索", "只有侦探能看到线索","仅限被他杀的玩家"], \
    skills: [ {id: 'forensic'} ] \
  }, \
  "hentai": { \
    notes: ["晚上可以骚扰玩家","当场上色狼以外的活玩家","都被骚扰(打)过后","色狼即胜","所有色狼共享名单"], \
    skills: [ {id: 'arousal'}, {id: 'harass_list'} ] \
  }, \
  "thief": { \
    notes: [], \
    skills: [ {id: 'steal'} ] \
  }, \
  "warden": { \
    notes: [], \
    skills: [ {id: 'imprisonment'} ] \
  }, \
  "sensei": { \
    notes: ["资讯不共享"], \
    skills: [ {id: 'question'} ] \
  }, \
  "madman": { \
    notes: ["当狼人阵营全灭时，自动转为狼人阵营"], \
    skills: [] \
  }, \
  "santa": { \
    notes: ["临别礼物：被杀死的时候，使该杀手缓速与黑暗10秒","临别美送：圣诞老人被票死时，当晚全体缓速"], \
    skills: [ {id: 'send_gift'} ] \
  }, \
  "villager": { \
    notes: [], \
    skills: [] \
  }, \
  "wraith": { \
    notes: ["狼人阵营被灭时自动获胜", "晚上永久无敌", "持续到人类阵营被灭","或被预言家查验到"], \
    skills: [ {id: 'invisible_on'} ] \
  }, \
  "voodoo": { \
    notes: ["狼人阵营被灭时自动获胜", "晚上永久无敌", "持续到人类阵营被灭","或被预言家查验到"], \
    skills: [ {id: 'invisible_on'}, {id: 'voodoo_needle'} ] \
  }, \
  "bewitcher": { \
    notes: ["狼人阵营被灭时自动获胜", "晚上永久无敌", "持续到人类阵营被灭","或被预言家查验到","", "被预言家查到时", "使其中蛊惑状态", "再也无法获得预言书"], \
    skills: [ {id: 'invisible_on'} ] \
  }, \
  "rigger": { \
    notes: ["狼人阵营被灭时自动获胜", "晚上永久无敌", "持续到人类阵营被灭","或被预言家查验到"], \
    skills: [ {id: 'invisible_on'}, {id: 'rigged_vote'} ] \
  }, \
  "phrenapates": { \
    notes: ["狼人阵营被灭时自动获胜", "晚上永久无敌", "持续到人类阵营被灭","或被预言家查验到"], \
    skills: [ {id: 'invisible_on'}, {id: 'lure'} ] \
  }, \
  "krampus": { \
    notes: ["狼人阵营被灭时自动获胜", "晚上永久无敌", "持续到人类阵营被灭","或被预言家查验到"], \
    skills: [ {id: 'invisible_on'}, {id: 'steal_gift'} ] \
  } \
}