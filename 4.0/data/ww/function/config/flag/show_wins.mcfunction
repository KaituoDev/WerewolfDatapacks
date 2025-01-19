# context: server
# output: 1 = true, 0 = false

execute unless data storage ww:memory config.ENABLE_SHOW_WINS run return fail

return run data get storage ww:memory config.ENABLE_SHOW_WINS