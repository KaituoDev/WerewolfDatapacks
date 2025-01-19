function fd:button/delete

bossbar set fd:game visible false

effect clear @a
clear @a
title @a actionbar ""

scoreboard players set %PHASE var -1

function fd:reset/schedules