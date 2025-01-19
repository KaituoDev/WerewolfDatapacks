# context: @s = player, @p[tag=this] = player reading
# storage: ww:temp roleJourney
# output: ww:output roleJourneyFormatted

execute unless data storage ww:temp roleJourney[0] run return 0

function ww:role/reveal/journey/_format with storage ww:temp roleJourney[0]
data remove storage ww:temp roleJourney[0]

function ww:role/reveal/journey/loop