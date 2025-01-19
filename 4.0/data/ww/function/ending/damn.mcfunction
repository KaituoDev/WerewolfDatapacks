# context: server, no one survives

execute unless score %spirits ww.system matches 0 run return fail
execute unless score %bads ww.system matches 0 run return fail
execute unless score %goods ww.system matches 0 run return fail

function ww:ending/_title {title: '无人存活', subtitle: '种族大灭绝', titleColor: '#808080'}

return 1