# context: @s = player, @p[tag=this] = player reading
# output: ww:output roleJourneyFormatted

#data modify storage ww:temp roleJourney set value [{name: '狼人',from: ''},{name:'盗贼', from:'someone'},{name:'猎人',from:'else'}]

data modify storage ww:temp roleJourney set value []
data modify storage ww:output roleJourneyFormatted set value []

function ww:player/_get_state {name: 'playerRoleJourney'}
execute unless data storage ww:output playerState run return fail

data modify storage ww:temp roleJourney set from storage ww:output playerState

# check whether length of role journey is just one
# if so, return 
execute store result score %length ww.var run data get storage ww:temp roleJourney
execute if score %length ww.var matches ..1 run return fail

data modify storage ww:output roleJourneyFormatted append value '{"text":" (","color":"white","bold":false}'

function ww:role/reveal/journey/loop

# cut the extra ">"
data remove storage ww:output roleJourneyFormatted[-1]
data modify storage ww:output roleJourneyFormatted append value '{"text":")","color":"white","bold":false}'

data remove storage ww:output joinString
data remove storage ww:output joinStringInput

data modify storage ww:temp joinStringInput set value {delimiter: ','}
data modify storage ww:temp joinStringInput.strings set from storage ww:output roleJourneyFormatted
function ww:utils/_join_string with storage ww:temp joinStringInput

# the previous output is '{storage0},{storage1},...'
data modify storage ww:temp joinStringInput set value {delimiter: '', strings: ["[","]"]}
data modify storage ww:temp joinStringInput.strings insert 1 from storage ww:output joinString
function ww:utils/_join_string with storage ww:temp joinStringInput

data modify storage ww:output roleJourneyFormatted set from storage ww:output joinString