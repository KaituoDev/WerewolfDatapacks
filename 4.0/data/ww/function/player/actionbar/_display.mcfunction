# context: @s = player
# inputs: {name, color}

# selected item
data modify storage ww:temp actionbarInput.item set value '{"text":""}'
execute if data entity @s SelectedItem run data modify storage ww:temp actionbarInput.item set value \
  '[{"text":" <","color":"white","bold":false},{"nbt":"SelectedItem.components.minecraft:item_name","entity":"@s","interpret":true},{"text":">","color":"white","bold":false}]'

# pairing
data modify storage ww:temp actionbarInput.lovers set value {text:'{"text":""}', value: ''}
execute if score @s ww.pairingGroup matches 1.. run function ww:player/actionbar/display/lovers

# suit cooldown
function ww:player/actionbar/_format_score \
  {objective: 'suitCD', title: '装备冷却', titleColor: 'aqua', valueColor: 'yellow', scale: 0.05}

# invisible_on item cooldown
function ww:player/actionbar/_format_score \
  {objective: 'invisItemCD', title: '隐形冷却', titleColor: 'aqua', valueColor: 'yellow', scale: 0.05}

# bomb countdown
function ww:player/actionbar/_format_score \
  {objective: 'bomb', title: '爆炸倒数', titleColor: 'red', valueColor: 'yellow', scale: 0.05}

# immune countdown
function ww:player/actionbar/_format_score \
  {objective: 'immune', title: '无敌', titleColor: 'red', valueColor: 'yellow', scale: 0.05}
execute unless score @s ww.immune matches 1.. if function ww:player/flag/is_immune run \
  data modify storage ww:temp actionbarInput.immune.text set value \
    '[{"text":" 无敌 ","color":"red","bold":true},{"text":"永久","color":"yellow"}]'

# invis countdown
function ww:player/actionbar/_format_score \
  {objective: 'forceInvis', title: '隐形', titleColor: 'red', valueColor: 'yellow', scale: 0.05}

# morphing countdown
function ww:player/actionbar/_format_score \
  {objective: 'morphing', title: '化猫', titleColor: 'red', valueColor: 'yellow', scale: 0.05}

# ninjaTree countdown
function ww:player/actionbar/_format_score \
  {objective: 'ninjaTree', title: '岩遁', titleColor: 'red', valueColor: 'yellow', scale: 0.05}

# ninjaSmoke countdown
# function ww:player/actionbar/_format_score \
#   {objective: 'ninjaSmoke', title: '雾遁', titleColor: 'red', valueColor: 'yellow', scale: 0.05}

# ninjaTransform countdown
function ww:player/actionbar/_format_score \
  {objective: 'ninjaTransform', title: '蚁遁', titleColor: 'red', valueColor: 'yellow', scale: 0.05}

# nilsSizeReduce countdown
function ww:player/actionbar/_format_score \
  {objective: 'nilsSizeReduce', title: '缩小', titleColor: 'red', valueColor: 'yellow', scale: 0.05}

# sing countdown
function ww:player/actionbar/_format_score \
  {objective: 'sing', title: '唱歌', titleColor: 'red', valueColor: 'yellow', scale: 0.05}

# za_warudo countdown
function ww:player/actionbar/_format_score \
  {objective: 'za_warudo', title: '定身', titleColor: 'red', valueColor: 'yellow', scale: 0.05}

# charm countdown
function ww:player/actionbar/_format_score \
  {objective: 'charm', title: '魅惑', titleColor: 'red', valueColor: 'yellow', scale: 0.05}

# curse stacks
data modify storage ww:temp actionbarInput.curseStacks set value {text:'{"text":""}', value: 0}
execute store result score %curses ww.var run function ww:skill/voodoo_needle/get_stacks
execute if score %curses ww.var matches 1.. store result storage ww:temp actionbarInput.curseStacks.value int 1 run \
  scoreboard players get %curses ww.var
execute if score %curses ww.var matches 1.. run \
  data modify storage ww:temp actionbarInput.curseStacks.text set value \ 
    '[{"text":" 诅咒 ","color":"red","bold":true},{"nbt":"actionbarInput.curseStacks.value","storage":"ww:temp","color":"yellow"},{"text":" 层","color":"red","bold":false}]'

$title @s actionbar [ \
  {"text":"[ "}, \
  {"text":"$(name)","color":"$(color)","bold":true}, \
  {"text":" ]"}, \
  {"nbt":"actionbarInput.item","storage":"ww:temp","interpret":true}, \
  {"nbt":"actionbarInput.suitCD.text","storage":"ww:temp","interpret":true}, \
  {"nbt":"actionbarInput.invisItemCD.text","storage":"ww:temp","interpret":true}, \
  {"nbt":"actionbarInput.lovers.text","storage":"ww:temp","interpret":true}, \
  {"nbt":"actionbarInput.bomb.text","storage":"ww:temp","interpret":true}, \
  {"nbt":"actionbarInput.immune.text","storage":"ww:temp","interpret":true}, \
  {"nbt":"actionbarInput.forceInvis.text","storage":"ww:temp","interpret":true}, \
  {"nbt":"actionbarInput.morphing.text","storage":"ww:temp","interpret":true}, \
  {"nbt":"actionbarInput.ninjaTree.text","storage":"ww:temp","interpret":true}, \
  {"nbt":"actionbarInput.ninjaTransform.text","storage":"ww:temp","interpret":true}, \
  {"nbt":"actionbarInput.nilsSizeReduce.text","storage":"ww:temp","interpret":true}, \
  {"nbt":"actionbarInput.sing.text","storage":"ww:temp","interpret":true}, \
  {"nbt":"actionbarInput.curseStacks.text","storage":"ww:temp","interpret":true}, \ 
  {"nbt":"actionbarInput.za_warudo.text","storage":"ww:temp","interpret":true}, \ 
  {"nbt":"actionbarInput.charm.text","storage":"ww:temp","interpret":true}, \ 
  "" \
]