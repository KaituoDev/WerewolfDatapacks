# context: @s = player shooting rifle
# inputs: {source, victim}

$execute as @n[nbt={UUID:$(source)}] run function ww:player/role/_set_state {path: 'rifleTarget', value: $(victim)}

$function ww:narrator/info/_rifle {source: $(source), victim: $(victim)}