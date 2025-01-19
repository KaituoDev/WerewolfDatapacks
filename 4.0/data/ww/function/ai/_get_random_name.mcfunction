# context: server
# inputs: {index}
# output: ww:output randomAIName

$data modify storage ww:output randomAIName set from storage ww:temp aiCustomNames[$(index)]
$data remove storage ww:temp aiCustomNames[$(index)]