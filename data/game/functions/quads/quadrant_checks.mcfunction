#quadrant_checks

#Display in chat what quadrant you are in.
execute if entity @s[x=0,dx=-750,z=0,dz=750,y=0,dy=256] run tellraw @s "quad 1"
execute if entity @s[x=0,dx=750,z=0,dz=750,y=0,dy=256] run tellraw @s "quad 2"
execute if entity @s[x=0,dx=750,z=0,dz=-750,y=0,dy=256] run tellraw @s "quad 3"
execute if entity @s[x=0,dx=-750,z=0,dz=-750,y=0,dy=256] run tellraw @s "quad 4"