#Hallzmine: This function, when ran by a player, gives, said player, the full set of "Broken Relic" gear.
replaceitem entity @s hotbar.0 netherite_helmet{display:{Name:'{"text":"Broken Relic Helmet","color":"#785582","italic":false}'},Unbreakable:1b,isRelic:1,onDrop:0,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
replaceitem entity @s hotbar.1 netherite_chestplate{display:{Name:'{"text":"Broken Relic Chestplate","color":"#785582","italic":false}'},Unbreakable:1b,isRelic:1,onDrop:0,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
replaceitem entity @s hotbar.2 netherite_leggings{display:{Name:'{"text":"Broken Relic Leggings","color":"#785582","italic":false}'},Unbreakable:1b,isRelic:1,onDrop:0,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
replaceitem entity @s hotbar.3 netherite_boots{display:{Name:'{"text":"Broken Relic Boots","color":"#785582","italic":false}'},Unbreakable:1b,isRelic:1,onDrop:0,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1

#Hallzmine: This function uses replaceitem instead of give as the give command will drop the item for a split second.
#Hallzmine: The behavior stated above is bad as it gives the main.mcfunction time to run the ondrop function which is no bueno.

#For REDSC, nothing in this file needs changed, just transfer it to the proper location
