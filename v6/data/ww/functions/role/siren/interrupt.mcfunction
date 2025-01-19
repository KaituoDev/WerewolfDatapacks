## Notify all wolves that siren interrupted the vote result

tellraw @a[scores={onWolfList=1..}] [{"storage":"ww:game","nbt":"DISPLAY.error","interpret":true},{"text":"","bold":false},{"text":"受到人魚的技能干擾, 投票作廢"}]