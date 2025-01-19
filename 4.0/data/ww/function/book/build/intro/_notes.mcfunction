# storage ww:temp joinNotesInput
# inputs: {notes}
# output: ww:output joinedNotes

$data modify storage ww:temp joinNotesInput set value $(notes)
data modify storage ww:output joinedNotes set value []

function ww:book/build/intro/notes/loop
# remove the extra newline at the end
data remove storage ww:output joinedNotes[-1]