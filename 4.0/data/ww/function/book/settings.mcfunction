clear @s written_book[minecraft:custom_data={"ww.book":"ww.intro.settings"}]

give @s written_book[item_name='{"color":"aqua","text":"設定說明手冊","bold":true}',minecraft:custom_data={"ww.book":"ww.intro.settings"},written_book_content={title:"",author:"",pages:[ \
  '[{"text":"[地圖設定]","color":"blue","clickEvent":{"action":"change_page","value":"2"}}, \
    {"text":"\\n\\n"}, \
    {"text":"[模式設定]","color":"blue","clickEvent":{"action":"change_page","value":"3"}}, \
    {"text":"\\n\\n"}, \
    {"text":"[細節設定]","color":"blue","clickEvent":{"action":"change_page","value":"4"}}, \
    {"text":"\\n\\n"}, \
    {"text":"[趣味設定]","color":"blue","clickEvent":{"action":"change_page","value":"5"}}, \
    {"text":"\\n\\n"}, \
    {"text":"[切換旁白]","color":"blue","clickEvent":{"action":"change_page","value":"6"}}, \
    {"text":"\\n\\n"} \
  ]', \
  '[{"text":"[隨機地圖]","color":"blue","clickEvent":{"action":"change_page","value":"7"}}, \
    {"text":"\\n\\n"}, \
    {"text":"[顯示詳情]","color":"blue","clickEvent":{"action":"change_page","value":"8"}} \
  ]', \
  '[{"text":"[屠邊式]","color":"blue","clickEvent":{"action":"change_page","value":"9"}}, \
    {"text":"\\n\\n"}, \
    {"text":"[屠城式]","color":"blue","clickEvent":{"action":"change_page","value":"10"}}, \
    {"text":"\\n\\n"}, \
    {"text":"[瘋人院]","color":"blue","clickEvent":{"action":"change_page","value":"11"}} \
  ]', \
  '[{"text":"[投票道具]","color":"blue","clickEvent":{"action":"change_page","value":"12"}} \
  ]', \
  '[{"text":"[技能大亂鬥]","color":"blue","clickEvent":{"action":"change_page","value":"13"}}, \
    {"text":"\\n\\n"}, \
    {"text":"[找職業按鈕]","color":"blue","clickEvent":{"action":"change_page","value":"19"}}, \
    {"text":"\\n\\n"}, \
    {"text":"[警長]","color":"blue","clickEvent":{"action":"change_page","value":"14"}}, \
    {"text":"\\n\\n"}, \
    {"text":"[蠢蛋]","color":"blue","clickEvent":{"action":"change_page","value":"15"}}, \
    {"text":"\\n\\n"}, \
    {"text":"[AI]","color":"blue","clickEvent":{"action":"change_page","value":"16"}}, \
    {"text":"\\n\\n"}, \
    {"text":"[戀人配偶數]","color":"blue","clickEvent":{"action":"change_page","value":"17"}} \
  ]', \
  '[{"text":"切換旁白","color":"blue","bold":true},{"text":"\\n\\n"},{"text":"每場遊戲開始前，所有旁白玩家將不參與遊戲，自動切為旁觀者，再點一次這個告示牌，或打 /trigger ww.narrator 即可變回遊戲玩家","color":"black","bold":false}]', \
  '[{"text":"隨機地圖","color":"blue","bold":true},{"text":"\\n\\n"},{"text":"每場遊戲開始前，系統會隨機選擇一張地圖","color":"black","bold":false}]', \
  '[{"text":"顯示詳情","color":"blue","bold":true},{"text":"\\n\\n"},{"text":"顯示關於當前選定的地圖資訊, 當使用資料包在別的世界時, 會額外出現編輯地圖名與地圖起始點的圖示","color":"black","bold":false}]', \
  '[{"text":"屠邊式","color":"blue","bold":true},{"text":"\\n\\n"},{"text":"當場上沒有怨靈, 尚有狼人, 同時人類方只剩一人時, 狼人陣營自動獲勝","color":"black","bold":false}]', \
  '[{"text":"屠城式","color":"blue","bold":true},{"text":"\\n\\n"},{"text":"狼人陣營必須殺光其他陣營方可獲勝","color":"black","bold":false}]', \
  '[{"text":"瘋人院","color":"blue","bold":true},{"text":"\\n\\n"},{"nbt":"MODE_INTRO.LUNATIC.description","storage": "ww:memory","color":"black","bold":false, "interpret": true}]', \
  '[{"text":"投票道具","color":"blue","bold":true},{"text":"\\n\\n"},{"text":"暴民劍:\\n透過攻擊其他玩家或AI投票, 遠距版本可以打到很遠的人\\n\\n穿牆投票:\\n對其他玩家點右鍵來投票, 顧名思義即便中間隔著方塊, 也可以投到對方\\n\\n投票書:\\n打開書選擇書中的玩家進行投票","color":"black","bold":false}]', \
  '[{"text":"技能大亂鬥","color":"blue","bold":true},{"text":"\\n\\n"},{"text":"每天晚上額外獲得隨機職業的技能, 若隨機選到和當前持有的技能相同時, 只會留一個","color":"black","bold":false}]', \
  '[{"text":"警長","color":"blue","bold":true},{"text":"\\n\\n"},{"text":"白天投票時1票當2票算","color":"black","bold":false}]', \
  '[{"text":"蠢蛋","color":"blue","bold":true},{"text":"\\n\\n"},{"text":"使用技能時會出現意料之外的效果, 詳情請見職業介紹書","color":"black","bold":false}]', \
  '[{"text":"AI","color":"blue","bold":true},{"text":"\\n\\n"},{"text":"遊戲開始時會召喚設定數量的村民, 狼人AI會召喚替身攻擊其他玩家, 白天也會參與投票, 玩家使用技能的對象也可以指向這些AI","color":"black","bold":false}]', \
  '[{"text":"戀人配偶數","color":"blue","bold":true},{"text":"\\n\\n"},{"text":"可調整一組戀人的定義, 例如設定為3時, 邱比特必須選擇3位玩家才算配對成功, 而3人中任一方死, 其他2人一起陪葬\\n\\n在選擇的過程中若已選擇的玩家死亡, 則需重選其他活著的玩家","color":"black","bold":false}]', \
  '[{"text":"戀人配偶數 (續)","color":"blue","bold":true},{"text":"\\n\\n"},{"text":"在選擇的過程中若已選擇的玩家已經和其他人配為戀人時, 則需重選其他活著的玩家\\n\\n最低為2, 無上限, 如果設定超過總玩家人數, 邱比特就永遠無法完成配對, 請注意","color":"black","bold":false}]', \
  '[{"text":"找職業按紐","color":"blue","bold":true},{"text":"\\n\\n"},{"text":"所有玩家藏按鈕一分鐘, 過後每顆按鈕會賦予職業, 先搶先贏","color":"black","bold":false}]' \
]}] 1