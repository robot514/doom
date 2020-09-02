

#check every 15 minutes we check to see if there is a target if so then we update there coords

execute if entity @a[tag=target] run function game:coord_leak/coord_update
scoreboard players set .targetExists Config 1


#runs every 15 minutes
schedule function data:clock 900s
