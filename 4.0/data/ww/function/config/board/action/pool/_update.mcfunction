# context: @s = player
# inputs {pos: ^ sign relative location, origin: UUID, id}

$execute if predicate ww:sneaking run function ww:config/board/action/pool/_decrement {id: '$(id)'}
$execute unless predicate ww:sneaking run function ww:config/board/action/pool/_increment {id: '$(id)'}

$execute at @n[nbt={UUID:$(origin)}] run \
  function ww:config/board/action/pool/_update_sign {id: '$(id)', origin: $(origin), pos: '$(pos)'}
