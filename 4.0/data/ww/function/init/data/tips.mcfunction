# context: server

# Tips shown in the "职业技巧" book, one entry per role.
# Each entry is a list of two or three sentences that only someone who has
# played the role would know. Roles that are not listed here get no book at
# all, so it is fine to add them a few at a time. Do not put a double quote
# inside a tip, it would break the json that the book is built from.

data modify storage ww:memory ROLES_TIPS set value { \
  "seer": [ \
    "积极查杀怨灵！怨灵存活时，谨慎公开自己的身份，你是怨灵的第一攻击目标。", \
    "小心雪狼，他们会被显示为人类阵营。", \
    "在被狼杀死的前一瞬间使用代罪换位，有机会让狼误杀队友。" \
  ] \
}
