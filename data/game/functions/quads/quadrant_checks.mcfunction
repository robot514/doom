#quadrant_checks

#Tags the player depending on the quadrant they are in.
tag @s[x=0,dx=-750,z=0,dz=750,y=0,dy=256,tag=!dead_zone] add quad_1
tag @s[x=0,dx=750,z=0,dz=750,y=0,dy=256,tag=!dead_zone] add quad_2
tag @s[x=0,dx=750,z=0,dz=-750,y=0,dy=256,tag=!dead_zone] add quad_3
tag @s[x=0,dx=-750,z=0,dz=-750,y=0,dy=256,tag=!dead_zone] add quad_4

#Removes old or innacurate quadrant tags
execute if entity @s[tag=quad_1] unless entity @s[x=0,dx=-750,z=0,dz=750,y=0,dy=256] run tag @s remove quad_1
execute if entity @s[tag=quad_2] unless entity @s[x=0,dx=750,z=0,dz=750,y=0,dy=256] run tag @s remove quad_2
execute if entity @s[tag=quad_3] unless entity @s[x=0,dx=750,z=0,dz=-750,y=0,dy=256] run tag @s remove quad_3
execute if entity @s[tag=quad_4] unless entity @s[x=0,dx=-750,z=0,dz=-750,y=0,dy=256] run tag @s remove quad_4