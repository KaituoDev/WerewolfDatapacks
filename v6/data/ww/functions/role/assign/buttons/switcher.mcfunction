## CONTEXT: @e[tag=this,limit=1] = button aec to add tags, @s = marker with tags to check

function ww:role/assign/get/__switcher

scoreboard players remove @s pool 1
kill @e[type=marker,tag=role,scores={pool=..0}]