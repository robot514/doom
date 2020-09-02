

#check every 15 minutes we check to see if there is a target if so then we update there coords

execute if entity @e[tag=target] run function data:coord_update 



#runs every 15 minutes
schedule function data:clock 900s