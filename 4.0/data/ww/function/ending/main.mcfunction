# context: server

# a majority of endings are moved to ending/check

# hentai ending
execute if score %hentais ww.system matches 1.. unless entity @e[predicate=ww:alive,tag=!hentai,tag=!ww.harassed] if \
  function ww:ending/winner/hentai run return run function ww:game/end

return 0