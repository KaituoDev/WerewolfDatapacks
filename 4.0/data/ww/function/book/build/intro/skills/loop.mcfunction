# context: @s = player
# scores: %enumeratedIndex ww.var, %rowIndex ww.var
# storage: ww:temp createBookInput, ww:temp skillsInput

execute unless data storage ww:temp skillsInput[0] run return 0

data modify storage ww:temp getSkillIntroInput set value {}
data modify storage ww:temp getSkillIntroInput.skillId set from storage ww:temp skillsInput[0].id

function ww:skill/_get_intro with storage ww:temp getSkillIntroInput

data modify storage ww:temp writeSkillLineInput set value {}
data modify storage ww:temp writeSkillLineInput set from storage ww:output skillIntro

# transform descriptions texts
data modify storage ww:temp joinNotesInput set value {}
data modify storage ww:temp joinNotesInput.notes set from storage ww:output skillIntro.descriptions
function ww:book/build/intro/_notes with storage ww:temp joinNotesInput
data modify storage ww:temp writeSkillLineInput.descriptions set from storage ww:output joinedNotes

# transform fool texts
data modify storage ww:temp joinNotesInput set value {}
data modify storage ww:temp joinNotesInput.notes set from storage ww:output skillIntro.fool
function ww:book/build/intro/_notes with storage ww:temp joinNotesInput
data modify storage ww:temp writeSkillLineInput.fool set from storage ww:output joinedNotes

function ww:book/build/intro/skills/_line with storage ww:temp writeSkillLineInput

data remove storage ww:temp skillsInput[0]
function ww:book/build/intro/skills/loop