clear @s written_book{setting:1b}

# settings book with no custom map names
execute if score %koumi_map system matches 0 run function ww:setting/book/default
execute if score %koumi_map system matches 1 run function ww:setting/book/custom