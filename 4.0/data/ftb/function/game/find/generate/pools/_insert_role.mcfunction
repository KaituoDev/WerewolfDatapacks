# context: server
# scores: %count ftb.var
# inputs: {id}

$data modify storage ftb:temp roles append value {id: '$(id)'}

scoreboard players remove %count ftb.var 1
$execute if score %count ftb.var matches 1.. run function ftb:game/find/generate/pools/_insert_role {id: '$(id)'}