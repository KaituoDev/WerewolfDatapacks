# context: @s = player

clear @s written_book[minecraft:custom_data={"ww.book":"ww.skill.question_campaign"}]

function ww:book/build/utils/_init { \
  title: '{"bold":true,"color":"aqua","text":"提問 (續)"}', \
  id: 'ww.skill.question_campaign' \
}

data modify storage ww:temp lineInput set value {}
function ww:player/role/get_state
data modify storage ww:temp lineInput.player set from storage ww:output playerState.question.player
function ww:book/build/question/_campaign_title with storage ww:temp lineInput

data modify storage ww:temp createBookInput.rows append value '[ \
  {"text":"是否為","color":"black","bold":false}, \
  {"text":"狼人陣營","bold":true,"color":"red", \
  "clickEvent":{"action":"run_command","value":"/trigger ww.questionCampaign set 1"}, \
  "hoverEvent":{"action":"show_text","value":[{"text":"點此詢問"}]}}, \
  "\\n\\n" \
]'
function ww:book/build/utils/on_new_row

data modify storage ww:temp createBookInput.rows append value '[ \
  {"text":"是否為","color":"black","bold":false}, \
  {"text":"人類陣營","bold":true,"color":"#50d300", \
  "clickEvent":{"action":"run_command","value":"/trigger ww.questionCampaign set 2"}, \
  "hoverEvent":{"action":"show_text","value":[{"text":"點此詢問"}]}}, \
  "\\n\\n" \
]'
function ww:book/build/utils/on_new_row

data modify storage ww:temp createBookInput.rows append value '[ \
  {"text":"是否為","color":"black","bold":false}, \
  {"text":"怨靈陣營","bold":true,"color":"dark_red", \
  "clickEvent":{"action":"run_command","value":"/trigger ww.questionCampaign set 3"}, \
  "hoverEvent":{"action":"show_text","value":[{"text":"點此詢問"}]}}, \
  "\\n\\n" \
]'
function ww:book/build/utils/on_new_row

# finalizes createBookInput.pages
function ww:book/build/utils/sanitize_enumerated
function ww:book/build/utils/construct
function ww:book/build/utils/_create with storage ww:temp createBookInput