# context: server
# output: 1 = true, 0 = false

execute unless data storage ww:memory config.ENABLE_APPRENTICE_SEER run return fail

return run data get storage ww:memory config.ENABLE_APPRENTICE_SEER