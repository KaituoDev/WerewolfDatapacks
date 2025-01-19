# context: @s = marker, @n[tag=this] = source, @n[tag=ww.switch.candidate] = target

tp @n[tag=this] @n[tag=ww.switch.candidate]
tp @n[tag=ww.switch.candidate] @s

kill @s[type=marker]