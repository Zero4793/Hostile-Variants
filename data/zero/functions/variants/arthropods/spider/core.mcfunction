#Zero_4793

#Spawn
execute as @e[type=spider,tag=!checked,tag=!normal,name="normal"] run data merge entity @s {Tags:["normal","checked"]}
execute as @e[type=spider,tag=!checked,tag=!tank,name="tank"] run data merge entity @s {Tags:["tank","checked"]}
execute as @e[type=spider,tag=!checked,tag=!caver,name="caver"] run data merge entity @s {Tags:["caver","checked"]}
execute as @e[type=spider,tag=!checked,tag=!queen,name="queen"] run data merge entity @s {Tags:["queen","checked"]}
execute as @e[type=spider,tag=!checked,tag=!jock,name="jockey"] run data merge entity @s {Tags:["jock","checked"]}
execute as @e[type=spider,tag=!checked,tag=!nest,name="nest"] run data merge entity @s {Tags:["nest","checked"]}


#Randomise
execute as @e[type=spider,tag=!checked,scores={zero.num=00..00}] run tag @s add tank
execute as @e[type=spider,tag=!checked,scores={zero.num=01..04}] run tag @s add caver
execute as @e[type=spider,tag=!checked,scores={zero.num=05..05}] run tag @s add queen
execute as @e[type=spider,tag=!checked,scores={zero.num=06..06}] run tag @s add nest
execute as @e[type=spider,tag=!checked,scores={zero.num=07..07}] run tag @s add jock
execute as @e[type=spider,tag=!checked,scores={zero.num=08..08}] run tag @s add normal
execute as @e[type=spider,tag=!checked,scores={zero.num=00..}] run tag @s add checked
scoreboard players set @e[type=spider,tag=!checked] zero.rng 8


#Execute
execute as @e[type=spider,tag=tank] at @s run function zero:variants/arthropods/spider/tank
execute as @e[type=spider,tag=caver] at @s run function zero:variants/arthropods/spider/caver
execute as @e[type=spider,tag=queen] at @s run function zero:variants/arthropods/spider/queen
execute as @e[type=spider,tag=jock] at @s run function zero:variants/arthropods/spider/jock
execute as @e[type=spider,tag=nest] at @s run function zero:variants/arthropods/spider/nest
execute as @e[type=armor_stand,tag=spider_nest] at @s run function zero:variants/arthropods/spider/spider_nest
execute as @e[type=spider,tag=normal] at @s run function zero:variants/arthropods/spider/normal

#
execute as @e[type=spider] at @s if block ~ ~ ~ water run effect give @s wither 1 1 true
execute as @e[type=cave_spider] at @s if block ~ ~ ~ water run effect give @s wither 1 1 true