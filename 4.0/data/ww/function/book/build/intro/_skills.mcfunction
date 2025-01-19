# context: @s = player
# scores: %enumeratedIndex ww.var, %rowIndex ww.var
# storage: ww:temp createBookInput
# inputs: {skills}

$data modify storage ww:temp skillsInput set value $(skills)

function ww:book/build/intro/skills/loop