# context: server

execute as @a run function ww:chat/_dm {type: 'info', message: '无人被投票出局, 和平地度过白天'}

scoreboard players reset * ww.vote_summary
execute as @e[predicate=ww:alive] run function ww:player/role/_remove_state {path: 'riggedVoteRecords'}