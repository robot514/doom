#main

#stores a player's x,z (Legacy, can be removed if not being used for anything)
#execute as @a store result score @s x run data get entity @s Pos[0]
#execute as @a store result score @s z run data get entity @s Pos[2]

#Tags player inside of the dead_zone with dead_zone
tag @a[x=-50,dx=100,z=-50,dz=100,y=0,dy=256] add dead_zone

#Removes the dead_zone tag if a player isn't inside of the dead zone
execute as @a[tag=dead_zone] unless entity @s[x=-50,dx=100,z=-50,dz=100,y=0,dy=256] run tag @s remove dead_zone

#run the quadrant checks
execute as @a[tag=!dead_zone] run function data:quadrant_checks
