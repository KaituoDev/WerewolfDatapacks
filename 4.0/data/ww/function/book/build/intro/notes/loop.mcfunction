# storage: ww:temp joinNotesInput, ww:output joinedNotes

execute unless data storage ww:temp joinNotesInput[0] run return 0

data modify storage ww:output joinedNotes append from storage ww:temp joinNotesInput[0]
data remove storage ww:temp joinNotesInput[0]
data modify storage ww:output joinedNotes append value "\\n"

function ww:book/build/intro/notes/loop