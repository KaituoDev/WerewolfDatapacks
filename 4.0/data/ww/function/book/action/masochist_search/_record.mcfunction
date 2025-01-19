# context: @s = player | villager
# inputs: {uuid, result, color, player}

$function ww:player/role/_set_state {path: 'masochistSearchRecords."$(uuid)"', value: \
  {player: '$(player)', uuid: $(uuid), result: '$(result)', color: '$(color)'} \
}