# context: server

function ww:stats/aggregate

execute store result score %totalBads ww.system if entity @e[predicate=ww:player,tag=bads]
execute store result score %totalGoods ww.system if entity @e[predicate=ww:player,tag=goods]
execute store result score %totalSpirits ww.system if entity @e[predicate=ww:player,tag=spirits]