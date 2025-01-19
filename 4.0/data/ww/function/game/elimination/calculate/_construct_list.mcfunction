# context: server
# inputs: {count}
# output: ww:output topCandidatesList

data remove storage ww:output topCandidatesList
data modify storage ww:temp candidatesList set value []
$execute as @e[predicate=ww:alive,scores={ww.vote_summary=$(count)}] run \
  function ww:game/elimination/calculate/build

data modify storage ww:temp combineInput set value {str: ''}
data modify storage ww:temp combineInput.name set from storage ww:temp candidatesList[0]
data remove storage ww:temp candidatesList[0]
function ww:game/elimination/calculate/_combine with storage ww:temp combineInput