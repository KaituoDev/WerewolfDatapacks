# context: @s = player | villager
# score: @s ww.questionCampaign

data modify storage ww:temp getResultInput set value {}
data modify storage ww:temp storeDataInput set value {}

# 1. stores the campaign selection
execute if score @s ww.questionCampaign matches 1 run data modify storage ww:temp getResultInput.askCampaign set value "bads"
execute if score @s ww.questionCampaign matches 1 run data modify storage ww:temp storeDataInput.campaign set value "狼人陣營"
execute if score @s ww.questionCampaign matches 2 run data modify storage ww:temp getResultInput.askCampaign set value "goods"
execute if score @s ww.questionCampaign matches 2 run data modify storage ww:temp storeDataInput.campaign set value "人類陣營"
execute if score @s ww.questionCampaign matches 3 run data modify storage ww:temp getResultInput.askCampaign set value "spirits"
execute if score @s ww.questionCampaign matches 3 run data modify storage ww:temp storeDataInput.campaign set value "怨靈陣營"
scoreboard players reset @s ww.questionCampaign


# 2. prepare store data input
function ww:player/role/get_state
data modify storage ww:temp storeDataInput merge from storage ww:output playerState.question

# 3. get result
data modify storage ww:temp getResultInput.uuid set from storage ww:output playerState.question.uuid
function ww:book/action/question/_get_result with storage ww:temp getResultInput

# 4. show info
function ww:book/action/question/_info with storage ww:temp storeDataInput

# 5. record data
function ww:book/action/question/_record with storage ww:temp storeDataInput

# 6. resets question data
function ww:player/role/_remove_state {path: 'question'}

clear @s written_book[custom_data~{"ww.book":"ww.skill.question_campaign"}]

return 1