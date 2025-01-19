# context: server

team add ww.officers "警長"
team modify ww.officers prefix [{"text":"[","color":"white","bold":true},{"text":"警長","color":"yellow"},{"text":"] ","color":"white"}]
team modify ww.officers nametagVisibility never
team modify ww.officers collisionRule never
team modify ww.officers seeFriendlyInvisibles false

team add ww.players
team modify ww.players nametagVisibility never
team modify ww.players collisionRule never
team modify ww.players seeFriendlyInvisibles false

team add ww.dead
#team modify ww.dead prefix [{"text":"[","color":"white","bold":true},{"text":"死者","color":"gray"},{"text":"] ","color":"white"}]
team modify ww.dead nametagVisibility never
team modify ww.dead collisionRule never
team modify ww.dead seeFriendlyInvisibles true