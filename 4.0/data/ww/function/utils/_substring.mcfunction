# input: str:string, start: number, end: number
# output: ww:output substring

data modify storage ww:output substring set value ""
$data modify storage ww:output substring set value "$(str)"
$data modify storage ww:output substring set string storage ww:output substring $(start) $(end)
