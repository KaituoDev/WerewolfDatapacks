# context: @s = player | villager
# inputs: {uuid, role, campaign, color, player}

$function ww:player/role/_append_state {path: 'pairing', value: \
  {player: '$(player)', uuid: $(uuid)} \
}