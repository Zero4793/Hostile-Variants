#Zero_4793

#Spawn
execute as @e[type=spider,tag=!checked,tag=!normal,name="normal"] run data merge entity @s {Tags:["normal","checked"]}
execute as @e[type=spider,tag=!checked,tag=!tank,name="tank"] run data merge entity @s {Tags:["tank","checked"]}
execute as @e[type=spider,tag=!checked,tag=!caver,name="caver"] run data merge entity @s {Tags:["caver","checked"]}
execute as @e[type=spider,tag=!checked,tag=!queen,name="queen"] run data merge entity @s {Tags:["queen","checked"]}
execute as @e[type=spider,tag=!checked,tag=!nest,name="nest"] run data merge entity @s {Tags:["nest","checked"]}
execute as @e[type=spider,tag=!checked,tag=!size,name="size"] run data merge entity @s {Tags:["size","checked"]}


#Randomise
execute as @e[type=spider,tag=!checked] store result score @s random run random value 0..10
execute as @e[type=spider,tag=!checked,scores={random=00..00}] run tag @s add tank
execute as @e[type=spider,tag=!checked,scores={random=01..04}] run tag @s add caver
execute as @e[type=spider,tag=!checked,scores={random=05..05}] run tag @s add queen
execute as @e[type=spider,tag=!checked,scores={random=06..06}] run tag @s add nest
execute as @e[type=spider,tag=!checked,scores={random=07..07}] run tag @s add size
execute as @e[type=spider,tag=!checked,scores={random=08..10}] run tag @s add normal
tag @e[type=spider] add checked


#Execute
execute as @e[type=spider,tag=tank] at @s run function hostile_variants:spider/tank
execute as @e[type=spider,tag=caver] at @s run function hostile_variants:spider/caver
execute as @e[type=spider,tag=queen] at @s run function hostile_variants:spider/queen
execute as @e[type=spider,tag=nest] at @s run function hostile_variants:spider/nest
execute as @e[type=armor_stand,tag=spider_nest] at @s run function hostile_variants:spider/spider_nest
execute as @e[type=spider,tag=size] at @s run function hostile_variants:spider/size
execute as @e[type=spider,tag=normal] at @s run function hostile_variants:spider/normal

#Painful water
execute as @e[type=spider] at @s if block ~ ~ ~ water run effect give @s wither 1 1 true
execute as @e[type=cave_spider] at @s if block ~ ~ ~ water run effect give @s wither 1 1 true