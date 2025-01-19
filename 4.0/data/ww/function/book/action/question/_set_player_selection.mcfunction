# context: @s = player | villager
# inputs: {uuid, player}

$function ww:player/role/_set_state {path: 'question', value: \
  {player: '$(player)', uuid: $(uuid)} \
}