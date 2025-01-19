scoreboard players remove @a[scores={immune=1..},tag=!immortal] immune 1
scoreboard players remove @a[scores={attraction=1..}] attraction 1

# a small hack around delaying masking
# scoreboard players remove @a[scores={visible=2..}] visible 1

scoreboard players remove @a[scores={invisible=1..}] invisible 1

schedule function ww:game/main_1s 1s