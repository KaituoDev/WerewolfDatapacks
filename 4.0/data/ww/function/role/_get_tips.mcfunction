# inputs: {roleId}
# output: ww:output roleTips

data remove storage ww:output roleTips

$data modify storage ww:output roleTips set from storage ww:memory ROLES_TIPS.'$(roleId)'
