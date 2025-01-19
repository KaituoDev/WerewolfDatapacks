# context: @s = marker
# inputs: {uuid, player, role, campaign, color, suspects: string}

tag @s add ww.grave
$data modify entity @s data set value \
  {uuid: $(uuid), player: '$(player)', role: '$(role)', campaign: '$(campaign)', color: '$(color)', suspects: '$(suspects)'}