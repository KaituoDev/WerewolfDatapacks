# context: @s = player | villager
# scores: %enumeratedIndex ww.var, %rowIndex ww.var
# storage: ww:temp createBookInput, ww:temp masochistSearchRecords

# gets plain text name from entity uuid
function ww:player/name

# appends the formatted string to storage.rows
data modify storage ww:temp lineInput.name set from storage ww:output playerName

# given a global id score, sets lineInput.func
data modify storage ww:temp setTriggerCommandInput set value {}
execute store result storage ww:temp setTriggerCommandInput.id int 1 run function ww:player/id
function ww:book/build/masochist_search/_set_trigger_command with storage ww:temp setTriggerCommandInput

data modify storage ww:temp lineInput.uuid set from entity @s UUID
function ww:book/build/masochist_search/_line with storage ww:temp lineInput

# adds a new row to the book
function ww:book/build/utils/on_new_row


function ww:book/build/utils/_auto_page_break {maxLinesPerPage: 5}
