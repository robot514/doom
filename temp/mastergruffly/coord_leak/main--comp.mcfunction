#displays the coords as long as there is a target player

execute if entity @a[tag=target] run title @a actionbar ["",{"text":"x [ ","bold":true,"color":"dark_red"},{"score":{"name":"G_x","objective":"coord"},"color":"red"},{"text":" ]","bold":true,"color":"dark_red"},{"text":"    z [ ","bold":true,"color":"dark_blue"},{"score":{"name":"G_z","objective":"coord"},"color":"blue"},{"text":" ]","bold":true,"color":"dark_blue"}]
