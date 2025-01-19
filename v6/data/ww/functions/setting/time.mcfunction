clear @s warped_fungus_on_a_stick{setting:1b}
function ww:item/setting/time/morning
function ww:item/setting/time/night
function ww:item/setting/time/wolf

tellraw @s [{"storage":"ww:game","nbt":"DISPLAY.info","interpret":true},{"text":"","bold":false},{"text":"請用給予的道具改變時間"}]