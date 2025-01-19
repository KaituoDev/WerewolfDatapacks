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
    notes: ["被預言書查中會顯示人類陣營"], \
    skills: [ {id: "suit_up"}, {id: "suit_off"}, {id: "autopilot"}, {id: "friends_list"}, {id: "glow_up"} ] \
  }, \
  "hijack_wolf": { \
    notes: ["使預言書玩家名變難以閱讀", "所有玩家強制穿皮革裝與玩家頭顱", "直到場上沒有百變狼"], \
    skills: [ {id: "suit_up"}, {id: "suit_off"}, {id: "autopilot"}, {id: "friends_list"}, {id: "hijack"} ] \
  }, \
  "alpha_wolf": { \
    notes: ["目標是殺光所有非原初狼的玩家", "同夥名單會額外顯示原初狼名單"], \
    skills: [ {id: "suit_up"}, {id: "suit_off"}, {id: "autopilot"}, {id: "friends_list"} ] \
  }, \
  "rage_wolf": { \
    notes: ["殺的玩家越多速度越快"], \
    skills: [ {id: "suit_up"}, {id: "suit_off"}, {id: "autopilot"}, {id: "friends_list"} ] \
  }, \
  "bomb_wolf": { \
    notes: [], \
    skills: [ {id: "suit_up"}, {id: "suit_off"}, {id: "autopilot"}, {id: "friends_list"}, {id: "implant_bomb"} ] \
  }, \
  "bloody_wolf": { \
    notes: ["殺完玩家後自動獲得血月技能"], \
    skills: [ {id: "suit_up"}, {id: "suit_off"}, {id: "autopilot"}, {id: "friends_list"}, {id: "blood_moon"} ] \
  }, \  
  "seer_wolf": { \
    notes: ["查驗名單不共享"], \
    skills: [ {id: "suit_up"}, {id: "suit_off"}, {id: "autopilot"}, {id: "friends_list"}, {id: "prophecy"} ] \
  }, \
  "charm_wolf": { \
    notes: [], \
    skills: [ {id: "suit_up"}, {id: "suit_off"}, {id: "autopilot"}, {id: "friends_list"}, {id: "charm"} ] \
  }, \
  "cupid": { \
    notes: ["選擇戀人組合", "當場上只剩下戀人時就算戀人勝利","邱比特活著的話也算勝利", "戀人任一方死去", "另一人也會陪葬"], \
    skills: [ {id: 'pairing_book'} ] \
  }, \
  "seer": { \
    notes: ["預言家查驗名單不共享"], \
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
  "ninja": { \
    notes: ["隱形時速度提升"], \
    skills: [ {id: 'ninja_scroll'}, {id: 'ninjutsu_activate'} ] \
  }, \
  "trickster": { \
    notes: ["武器不會殺死人"], \
    skills: [ {id: "suit_up"}, {id: "suit_off"} ] \
  }, \
  "masochist": { \
    notes: ["白天成為票數最多者立即獲勝"], \
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
    notes: ["玩家死時會產生墳墓", "只有掘墓者能看得到墳墓"], \
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
    notes: ["玩家死後會留下線索", "只有偵探能看到線索","僅限被他殺的玩家"], \
    skills: [ {id: 'forensic'} ] \
  }, \
  "hentai": { \
    notes: ["晚上可以騷擾玩家","當場上色狼以外的活玩家","都被騷擾(打)過後","色狼即勝","所有色狼共享名單"], \
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
    notes: ["資訊不共享"], \
    skills: [ {id: 'question'} ] \
  }, \
  "madman": { \
    notes: ["當狼人陣營全滅時，自動轉為狼人陣營"], \
    skills: [] \
  }, \
  "santa": { \
    notes: ["臨別禮物：被殺死的時候，使該殺手緩速與黑暗10秒","臨別美送：聖誕老人被票死時，當晚全體緩速"], \
    skills: [ {id: 'send_gift'} ] \
  }, \
  "villager": { \
    notes: [], \
    skills: [] \
  }, \
  "wraith": { \
    notes: ["狼人陣營被滅時自動獲勝", "晚上永久無敵", "持續到人類陣營被滅","或被預言家查驗到"], \
    skills: [ {id: 'invisible_on'} ] \
  }, \
  "voodoo": { \
    notes: ["狼人陣營被滅時自動獲勝", "晚上永久無敵", "持續到人類陣營被滅","或被預言家查驗到"], \
    skills: [ {id: 'invisible_on'}, {id: 'voodoo_needle'} ] \
  }, \
  "bewitcher": { \
    notes: ["狼人陣營被滅時自動獲勝", "晚上永久無敵", "持續到人類陣營被滅","或被預言家查驗到","", "被預言家查到時", "使其中蠱惑狀態", "再也無法獲得預言書"], \
    skills: [ {id: 'invisible_on'} ] \
  }, \
  "rigger": { \
    notes: ["狼人陣營被滅時自動獲勝", "晚上永久無敵", "持續到人類陣營被滅","或被預言家查驗到"], \
    skills: [ {id: 'invisible_on'}, {id: 'rigged_vote'} ] \
  }, \
  "phrenapates": { \
    notes: ["狼人陣營被滅時自動獲勝", "晚上永久無敵", "持續到人類陣營被滅","或被預言家查驗到"], \
    skills: [ {id: 'invisible_on'}, {id: 'lure'} ] \
  }, \
  "krampus": { \
    notes: ["狼人陣營被滅時自動獲勝", "晚上永久無敵", "持續到人類陣營被滅","或被預言家查驗到"], \
    skills: [ {id: 'invisible_on'}, {id: 'steal_gift'} ] \
  } \
}