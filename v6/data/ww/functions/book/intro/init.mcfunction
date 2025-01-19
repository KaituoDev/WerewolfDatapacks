function ww:book/init

data modify block 0 0 0 Items[0].tag.title set value '遊戲說明書'
data modify block 0 0 0 Items[0].tag.display.Name set value '{"text":"遊戲說明書","color":"aqua","bold":true,"italic":false}'

function ww:book/intro/begin
function ww:book/intro/roles
function ww:book/intro/fools
function ww:book/intro/misc

data modify block 0 0 0 Items[0].tag.intro set value 1b