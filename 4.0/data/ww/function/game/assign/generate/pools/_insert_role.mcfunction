# context: server
# scores: %count ww.var
# inputs: {id}

$data modify storage ww:temp roles append value {id: '$(id)'}

scoreboard players remove %count ww.var 1
$execute if score %count ww.var matches 1.. run function ww:game/assign/generate/pools/_insert_role {id: '$(id)'}