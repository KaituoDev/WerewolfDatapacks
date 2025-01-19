# context: server
# storage: ww:output topCandidatesList, ww:temp candidatesList
# inputs: {name, str}

$data modify storage ww:output topCandidatesList set value '$(str)$(name) | '
data modify storage ww:temp combineInput set value {}
data modify storage ww:temp combineInput.str set from storage ww:output topCandidatesList
data modify storage ww:temp combineInput.name set from storage ww:temp candidatesList[0]
data remove storage ww:temp candidatesList[0]

execute if data storage ww:temp combineInput.name run \
  function ww:game/elimination/calculate/_combine with storage ww:temp combineInput