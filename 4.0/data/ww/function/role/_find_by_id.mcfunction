# inputs: {id}
# output: ww:output roleObj

data remove storage ww:output roleObj
$data modify storage ww:output roleObj set from storage ww:memory ROLES[{id: $(id)}]