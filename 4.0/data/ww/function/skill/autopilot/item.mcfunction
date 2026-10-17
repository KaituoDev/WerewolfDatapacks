# context: @s = player

# Disabled: toggling the mount on and off in quick succession floats the player
# upwards, so the item is no longer handed out. Only this grant is removed, so an
# item obtained by other means still works. Restore this line once the mount and
# scale handling in ww:skill/autopilot/run is fixed.
# function ww:skill/_item_with_model {id: 'autopilot', model: 'minecart', stack_size: 1}