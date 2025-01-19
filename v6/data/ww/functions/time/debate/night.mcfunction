# morning vote finalization is already done on the parent level

# just in case
execute as @a run function ww:reset/tags/debate

scoreboard players remove @a[scores={guardCD=1..}] guardCD 1

function ww:session/wolf/init


# skip item will be handed out once wolves votes are finalized