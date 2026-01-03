# context: @s = victim player | villager

advancement revoke @s only ww:hit_by_exorcist_crystal

execute if entity @s[tag=bads] if predicate ww:is_night on attacker run function ww:skill/exorcise/prompt_success
execute if entity @s[tag=!bads] if predicate ww:is_night on attacker run function ww:skill/exorcise/prompt_failure

execute if entity @s[tag=bads] if predicate ww:is_night run function ww:skill/exorcise/convert
