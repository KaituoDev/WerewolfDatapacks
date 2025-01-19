# context: server, no one survives

execute unless score %spirits ww.system matches 0 run return fail
execute unless score %bads ww.system matches 0 run return fail
execute unless score %goods ww.system matches 0 run return fail

function ww:ending/_title {title: '無人存活', subtitle: '種族大滅絕', titleColor: '#808080'}

return 1