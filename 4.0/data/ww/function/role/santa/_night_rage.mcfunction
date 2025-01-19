# context: server
# inputs: {time}

$effect give @e[predicate=ww:alive] slowness $(time) 1 true
$effect give @e[predicate=ww:alive] nausea $(time) 1 true

$execute as @a run function ww:chat/_dm { \
  type: 'warn', \
  message: '聖誕老公公對你們很失望，竟然把票都投在他身上，所有人都會受到$(time)秒的懲罰，臨別美送', \
}