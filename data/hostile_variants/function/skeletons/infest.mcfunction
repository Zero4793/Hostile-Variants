#Zero_4793

scoreboard players add @s zero.age 1
execute if score @s zero.age matches 60 at @s run particle minecraft:smoke ~ ~ ~ .2 .6 .2 0 10 normal @a
execute if score @s zero.age matches 60 if block ~ ~-1 ~ stone run setblock ~ ~-1 ~ minecraft:infested_cobblestone
execute if score @s zero.age matches 60 if block ~ ~-1 ~ granite run setblock ~ ~-1 ~ minecraft:infested_stone
execute if score @s zero.age matches 60 if block ~ ~-1 ~ diorite run setblock ~ ~-1 ~ minecraft:infested_stone
execute if score @s zero.age matches 60 if block ~ ~-1 ~ andesite run setblock ~ ~-1 ~ minecraft:infested_stone
execute if score @s zero.age matches 60 if block ~ ~-1 ~ tuff run setblock ~ ~-1 ~ minecraft:infested_deepslate
execute if score @s zero.age matches 60 if block ~ ~-1 ~ deepslate run setblock ~ ~-1 ~ minecraft:infested_deepslate
execute if score @s zero.age matches 60 run kill @s

