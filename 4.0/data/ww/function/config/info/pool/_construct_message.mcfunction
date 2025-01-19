# context: @s = player
# inputs: {name, count, campaign}

# $execute unless data storage ww:temp configInfoPool.'$(campaign)' run \
#   data modify storage ww:temp configInfoPool.'$(campaign)' set value []

$data modify storage ww:temp configInfoPool.'$(campaign)' append value '[ \
    { "text": "$(name)", "color": "white", "bold": true }, \
    { "text": ": ", "color": "white", "bold": false }, \
    { "text": "$(count)", "color": "green", "bold": true } \
]'