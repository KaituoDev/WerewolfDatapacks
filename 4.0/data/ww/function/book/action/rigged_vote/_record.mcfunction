# context: @s = player | villager
# inputs: {uuid, player}

$function ww:player/role/_append_state {path: 'riggedVoteRecords', value: \
  {player: '$(player)', uuid: $(uuid)} \
}