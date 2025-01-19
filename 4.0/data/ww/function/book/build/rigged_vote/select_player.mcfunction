# context: @s = player | villager
# scores: %enumeratedIndex ww.var, %rowIndex ww.var
# storage: ww:temp createBookInput, ww:temp riggedVoteRecords, ww:temp currentSelectionsStr

# check if current iteration player (uuid) has been selected
data modify storage ww:temp validateInput set value {}
data modify storage ww:temp validateInput.uuid set from entity @s UUID
execute store result score %success ww.var run function ww:book/build/rigged_vote/_if_already_selected with storage ww:temp validateInput
execute if score %success ww.var matches 1 run return 0

# check if current iteration player (uuid) has been taken
execute store result score %success ww.var run function ww:book/build/rigged_vote/_if_already_dead with storage ww:temp validateInput
execute if score %success ww.var matches 1 run return 0

# gets plain text name from entity uuid
function ww:player/name

# appends the formatted string to storage.rows
data modify storage ww:temp lineInput set value {}
data modify storage ww:temp lineInput.name set from storage ww:output playerName

# given a global id score, sets lineInput.func
data modify storage ww:temp setTriggerCommandInput set value {}
execute store result storage ww:temp setTriggerCommandInput.id int 1 run function ww:player/id
function ww:book/build/rigged_vote/_set_trigger_command with storage ww:temp setTriggerCommandInput

data modify storage ww:temp lineInput.uuid set from entity @s UUID
function ww:book/build/rigged_vote/_line with storage ww:temp lineInput

# adds a new row to the book
function ww:book/build/utils/on_new_row


function ww:book/build/utils/_auto_page_break {maxLinesPerPage: 5}
