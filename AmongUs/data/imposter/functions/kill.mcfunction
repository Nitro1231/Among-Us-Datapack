execute if entity @s[nbt={Inventory: [{Slot: -106b, id: "minecraft:slime_ball"}]}] run scoreboard players set @s check 1
execute if entity @s[nbt={Inventory: [{Slot: -106b, id: "minecraft:slime_ball"}]}] run clear @s minecraft:slime_ball
execute if score @s check matches 1 run execute at @s[tag=impostor] run kill @e[tag=!impostor,distance=..3,limit=1]
execute if score @s check matches 1 run give @s minecraft:slime_ball{display: {Name: '[{"text":"Among US"}]'}} 1
execute if score @s check matches 1 run scoreboard players set @s check 0