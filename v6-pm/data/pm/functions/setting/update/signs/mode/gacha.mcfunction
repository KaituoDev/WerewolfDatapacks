execute if score %gacha_mode system matches 0 run data merge block ~ ~ ~ {Color:"black",GlowingText:0b,Text1:'{"clickEvent":{"action":"run_command","value":"function ww:setting/mode/gacha"},"text":""}',Text2:'{"bold":false,"color":"aqua","text":"暴民轉蛋模式"}',Text3:'{"text":""}',Text4:'{"text":""}'}

execute if score %gacha_mode system matches 1 if predicate ww:mode/riot run data merge block ~ ~ ~ {Color:"black",GlowingText:1b,Text1:'{"clickEvent":{"action":"run_command","value":"function ww:setting/mode/gacha"},"text":""}',Text2:'{"bold":false,"color":"black","text":"暴民轉蛋模式"}',Text3:'{"text":""}',Text4:'{"text":""}'}