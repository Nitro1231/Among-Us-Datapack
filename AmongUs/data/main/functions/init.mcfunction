scoreboard objectives add check dummy

tag @e remove impostor
tag @e[type=minecraft:player,sort=random,limit=2] add impostor

title @a times 20 60 20

bossbar remove minecraft:impostor
bossbar add minecraft:impostor {"text":"Impostor","color":"red","bold":true}
bossbar set minecraft:impostor color green
bossbar set minecraft:impostor style notched_10
bossbar set minecraft:impostor players @a[tag=impostor]
title @a[tag=impostor] title {"text":"Impostor","bold":true,"color":"dark_red"}
title @a[tag=impostor] subtitle {"text":""}

bossbar remove minecraft:crewmate
bossbar add minecraft:crewmate {"text":"Crewmate","bold":true,"color":"dark_blue"}
bossbar set minecraft:crewmate color green
bossbar set minecraft:crewmate style notched_10
bossbar set minecraft:crewmate players @a[tag=!impostor]
title @a[tag=!impostor] title {"text":"Crewmate","bold":true,"color":"dark_blue"}
title @a[tag=!impostor] subtitle ["",{"text":"There are "},{"text":"2 impostors","color":"dark_red"},{"text":" among us"}]