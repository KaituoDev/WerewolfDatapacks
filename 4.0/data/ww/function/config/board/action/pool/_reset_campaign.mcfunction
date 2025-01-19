# context: @s = player
# inputs: {campaign: bads | goods | spirits, page, origin: UUID}

# 1. Clone ww:memory ROLES
data modify storage ww:temp clonedRoles set from storage ww:memory ROLES

# 2. Iterate through each item, compare item.campaign.id with inputs.campaign, via utils/_compare_string {str1, str2}
$function ww:config/board/action/pool/reset/_loop {campaign: $(campaign)}

# 3. update the signs
$function ww:config/board/page/pool/$(page) {origin: $(origin)}