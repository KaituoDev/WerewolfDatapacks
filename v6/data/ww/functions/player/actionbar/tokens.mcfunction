## OUTPUT: storage ww:game actionbar.tokens

execute if score @s tokens matches 0.. run data modify storage ww:game actionbar.tokens set value '[{"text":"代幣 "},{"score":{"name":"@s","objective":"tokens"},"color":"green","bold":true},{"text":", 必殺素材 "},{"score":{"name":"@s","objective":"materials"},"color":"green","bold":true},{"text":" / 5","color":"white"}]'