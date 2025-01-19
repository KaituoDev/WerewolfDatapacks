# context: server
# inputs: {time}

$effect give @e[predicate=ww:alive] speed $(time) 20 true

$execute as @a run function ww:chat/_dm { \
  type: 'warn', \
  message: '聖誕老公公對你們很失望，竟然把票都投在他身上，所有人都會受到$(time)秒的超速懲罰，臨別甲送', \
}