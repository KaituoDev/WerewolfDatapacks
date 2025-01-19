# input: str1, str2
# output: return <0 | 1>
# 0 = same, 1 = different
# restrictions: can only compare normal words, not \n escape sequence

$data modify storage ww:temp compareStr set value "$(str1)"
$return run data modify storage ww:temp compareStr set value "$(str2)"