# context: server

execute as @a run function ww:chat/_dm {type: 'info', message: '無人被投票出局, 和平地度過白天'}

scoreboard players reset * ww.vote_summary
execute as @e[predicate=ww:alive] run function ww:player/role/_remove_state {path: 'riggedVoteRecords'}