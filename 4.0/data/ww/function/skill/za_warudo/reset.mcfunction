# context: server

data modify storage ww:memory playerZaWarudoOrigin set value {}
kill @e[type=marker,tag=ww.za_warudo_origin]
scoreboard players reset * ww.za_warudo
kill @e[type=block_display,tag=ww.imprisonment.display]