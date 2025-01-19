# inputs: {min, max}

$scoreboard players set %match ww.var $(min)
$execute if score %match ww.var matches $(max) run return $(min)

$return run random value $(min)..$(max)