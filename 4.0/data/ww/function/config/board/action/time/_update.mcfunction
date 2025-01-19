# context: @s = player
# inputs {pos: ^ sign relative location, origin: UUID, id, name}

$execute if predicate ww:sneaking run function ww:config/board/action/time/_decrement {id: '$(id)'}
$execute unless predicate ww:sneaking run function ww:config/board/action/time/_increment {id: '$(id)'}

$execute at @n[nbt={UUID:$(origin)}] run \
  function ww:config/board/action/time/_update_sign {id: '$(id)', name: '$(name)', origin: $(origin), pos: '$(pos)'}
