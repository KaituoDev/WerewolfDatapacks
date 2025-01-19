# inputs: {enumeratedIndex, rowIndex, bookIndex}
# scores: %enumeratedIndex ww.var, %rowIndex ww.var
# storage: ww:temp createBookInput

$data modify storage ww:temp createBookInput.enumerated[$(enumeratedIndex)] append value '{"storage":"ww:book","nbt":"contents.BOOK$(bookIndex)[$(rowIndex)]","interpret":true}'