# context: server

# generates markers from pool config
function ww:game/assign/init
execute if score assignWithFixedNumber ww.config matches 0 run function ww:game/assign
execute if score assignWithFixedNumber ww.config matches 1 run function ww:game/assign_with_fixed_number

# begin session will run after assignment is done