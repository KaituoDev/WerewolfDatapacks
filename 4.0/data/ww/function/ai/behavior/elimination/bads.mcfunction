# context: @s = villager
# storage: ww:temp saveInput

tag @e[predicate=ww:alive,tag=!ww.wolf_kind] add candidate

# alpha wolf passive
execute if score %alives ww.system = %bads ww.system if entity @s[tag=alpha_wolf] run \
 tag @e[predicate=ww:alive,tag=ww.wolf_kind] add candidate
