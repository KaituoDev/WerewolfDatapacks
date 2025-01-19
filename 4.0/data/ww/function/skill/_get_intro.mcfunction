# inputs: {skillId}
# output: ww:output skillIntro

data remove storage ww:output skillIntro

$data modify storage ww:output skillIntro set from storage ww:memory SKILLS_INTRO.'$(skillId)'