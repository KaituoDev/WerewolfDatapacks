gamerule sendCommandFeedback false
gamerule doDaylightCycle false
gamerule doImmediateRespawn true
gamerule maxCommandChainLength 200000
gamerule keepInventory true
gamerule doFireTick false
gamerule doMobSpawning false
gamerule announceAdvancements false
gamerule fallDamage false
gamerule maxEntityCramming 1000

scoreboard objectives add ww.firstTimer dummy

scoreboard objectives add ww.var dummy
scoreboard objectives add ww.system dummy
scoreboard objectives add ww.skill minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add ww.suitCD dummy
scoreboard objectives add ww.invisItemCD dummy
scoreboard objectives add ww.poisonCD dummy

scoreboard objectives add ww.deaths deathCount
scoreboard objectives add ww.gracefulClean dummy
scoreboard objectives add ww.dummyTimer dummy
scoreboard objectives add ww.forceInvis dummy
scoreboard objectives add ww.globalId dummy
scoreboard objectives add ww.pairingGroup dummy
scoreboard objectives add ww.pairingOrigin dummy
scoreboard objectives add ww.autopilotTarget dummy
scoreboard objectives add ww.spirits.exorcised dummy
scoreboard objectives add ww.stealGiftSource dummy
scoreboard objectives add ww.foolStealGiftSource dummy

scoreboard objectives add ww.prophecy trigger
scoreboard objectives add ww.elimination trigger
scoreboard objectives add ww.pairing trigger
scoreboard objectives add ww.ninjaScroll trigger
scoreboard objectives add ww.masochistSearch trigger
scoreboard objectives add ww.rigVote trigger
scoreboard objectives add ww.navigateToAI trigger
scoreboard objectives add ww.question trigger
scoreboard objectives add ww.questionCampaign trigger
scoreboard objectives add ww.send_gift trigger

scoreboard objectives add ww.vote_summary dummy {"text":"獲票數","color":"gold","bold":true}
scoreboard objectives add ww.bomb dummy
scoreboard objectives add ww.immune dummy
scoreboard objectives add ww.morphing dummy
scoreboard objectives add ww.ninjaTree dummy
# scoreboard objectives add ww.ninjaSmoke dummy
scoreboard objectives add ww.ninjaTransform dummy
scoreboard objectives add ww.sing dummy
scoreboard objectives add ww.za_warudo dummy
# scoreboard objectives add ww.switchOrder dummy
scoreboard objectives add ww.charm dummy

scoreboard objectives add ww.kills dummy
scoreboard objectives add ww.wins dummy {"text":"獲勝次數","color":"gold","bold":true}
scoreboard objectives add ww.isSleeping minecraft.custom:minecraft.sleep_in_bed

scoreboard objectives add ww.narrator trigger

# AI related scoreboards
scoreboard objectives add ww.ai.fast_forward_used dummy
scoreboard objectives add ww.ai.elimination_used dummy
scoreboard objectives add ww.ai.rifle_used dummy
scoreboard objectives add ww.ai.poison_potion_used dummy
scoreboard objectives add ww.ai.healing_potion_used dummy
scoreboard objectives add ww.ai.prophecy_used dummy
scoreboard objectives add ww.ai.explosion_used dummy
scoreboard objectives add ww.ai.glow_up_used dummy
scoreboard objectives add ww.ai.implant_bomb_used dummy
scoreboard objectives add ww.ai.blood_moon_used dummy
scoreboard objectives add ww.ai.pairing_attempted dummy
scoreboard objectives add ww.ai.ninjutsu_used dummy
scoreboard objectives add ww.ai.masochist_search_used dummy
scoreboard objectives add ww.ai.sing_used dummy

bossbar add ww:game_status ""
bossbar add ww:ai_counter {"text":"產生AI中...","color":"green","bold":true}
bossbar add ww:assignment {"text":"分配職業中...","color":"green","bold":true}

data modify storage ww:memory constants set value { \
  "EXECUTION_TICKS": 5, \
}

function ww:init/data
function ww:init/teams

schedule clear ww:main_1s
function ww:main_1s

schedule clear ww:main_5t
function ww:main_5t

schedule clear ww:main_5s
function ww:main_5s

schedule clear ww:queue/main
function ww:queue/main

schedule clear ww:queue/main_1s
function ww:queue/main_1s

tellraw @a [{"text":"狼人殺.AI 載入完畢"},{"text":" [v4.0]","color":"green","bold":true}]