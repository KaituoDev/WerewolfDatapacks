# context: server

schedule function ww:main_1s 1s

execute unless predicate ww:started run return fail
 
function ww:ai/killer_ai_main

function ww:skill/autopilot/main