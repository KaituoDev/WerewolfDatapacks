function ww:book/init

data modify block 0 0 0 Items[0].tag.title set value '逃離現場'
data modify block 0 0 0 Items[0].tag.display.Name set value '{"text":"逃離現場","color":"light_purple","bold":true,"italic":false}'
data modify block 0 0 0 Items[0].tag.pages set value ['[{"text": "[", "color": "black", "bold": "false"}, {"text": "確認使用", "color": "red", "bold": "true", "clickEvent": {"action": "run_command", "value": "/trigger localVoteTrigger set 1"}}, {"text": "]", "color": "black", "bold": "false"}]']
data modify block 0 0 0 Items[0].tag.pages prepend value '["技能: ",{"text":"逃離現場","color":"light_purple","bold":true},"\\n\\n",{"text":"可以迴避所有殺機一次","color":"black"}]'

data modify block 0 0 0 Items[0].tag.vote set value 1b
data modify block 0 0 0 Items[0].tag.villager set value 1b

loot give @s mine 0 0 0 air{drop_contents:true}