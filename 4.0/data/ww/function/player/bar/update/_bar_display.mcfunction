# context: @s = player
# inputs: id, currentAmountColor, currentAmount, maxAmount

$bossbar set $(id) name [{"text":"氧氣值 ","color":"blue"},{"text":"$(currentAmount)","color":"$(currentAmountColor)","bold":true},{"text":"/","color":"white"},{"text":"$(maxAmount)","color":"green","bold":true}]
