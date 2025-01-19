# running as non-fool, non-alpha wolf

tag @a[scores={onWolfList=1..},tag=!this] add to_show

execute if entity @a[tag=alive,tag=alpha,tag=wolf] run tag @a[tag=!to_show,sort=arbitrary,limit=2] add to_show

function ww:skill/reveal/wolf/show

tag @a remove to_show