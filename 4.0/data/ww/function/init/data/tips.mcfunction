# context: server

# Tips shown in the "职业技巧" book, one entry per role.
# goal: a single sentence that says what this role is trying to do.
# tips: two or three sentences only someone who has played the role would know.
# Roles that are not listed here get no book at all, so it is fine to add them
# a few at a time. Do not put a double quote inside goal or tips, it would break
# the json that the book is built from.

data modify storage ww:memory ROLES_TIPS set value { \
  "seer": { \
    goal: "查杀怨灵，找出狼人，带领人类获得胜利！", \
    tips: [ \
      "小心雪狼，他们会被显示为人类阵营。", \
      "在被狼杀死的前一瞬间使用代罪换位，有机会让狼误杀队友。", \
      "怨灵存活时，谨慎公开自己的身份，你是怨灵的第一攻击目标。" \
    ] \
  } \
}
