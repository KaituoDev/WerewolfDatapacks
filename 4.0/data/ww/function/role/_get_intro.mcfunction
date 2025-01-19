# inputs: {roleId}
# output: ww:output roleIntro

data remove storage ww:output roleIntro

$data modify storage ww:output roleIntro set from storage ww:memory ROLES_INTRO.'$(roleId)'