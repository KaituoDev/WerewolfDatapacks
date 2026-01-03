# context: server

execute store result score %bads ww.system if entity @e[predicate=ww:player,tag=bads,predicate=ww:alive]
execute store result score %goods ww.system if entity @e[predicate=ww:player,tag=goods,predicate=ww:alive]
execute store result score %spirits ww.system if entity @e[predicate=ww:player,tag=spirits,predicate=ww:alive]
execute store result score %alives ww.system if entity @e[predicate=ww:alive]
execute store result score %alivesRealPlayer ww.system if entity @a[predicate=ww:alive]
execute store result score %aliveNPC ww.system if entity @e[predicate=ww:alive,type=villager]
execute store result score %aliveWolfKind ww.system if entity @e[predicate=ww:alive,tag=ww.wolf_kind]
execute store result score %totalWolfKind ww.system if entity @e[tag=ww.wolf_kind]

execute store result score %hijack_wolves ww.system if entity @e[predicate=ww:alive,tag=hijack_wolf]
execute store result score %alpha_wolves ww.system if entity @e[predicate=ww:alive,tag=alpha_wolf]

execute store result score %hentais ww.system if entity @e[predicate=ww:alive,tag=hentai]
execute store result score %goodsMadmans ww.system if entity @e[predicate=ww:alive,tag=madman,tag=goods]

execute if score %alivesRealPlayer ww.system matches 0 run \
 scoreboard players set %ai_can_ff ww.system 1
execute if score %alivesRealPlayer ww.system matches 0 run \
 scoreboard players set %ai_can_vote ww.system 1
