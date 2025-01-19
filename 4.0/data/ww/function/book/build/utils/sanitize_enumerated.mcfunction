# context: @s = player
# scores: %enumeratedIndex ww.var, %rowIndex ww.var
# storage: ww:temp createBookInput

data modify storage ww:temp sanitization set value {result: []}
data modify storage ww:temp sanitization.raw set from storage ww:temp createBookInput.enumerated

# clean up any empty arrays within enumerated
# a.k.a. empty new pages
function ww:book/build/utils/sanitize_enumerated/loop

data modify storage ww:temp createBookInput.enumerated set from storage ww:temp sanitization.result