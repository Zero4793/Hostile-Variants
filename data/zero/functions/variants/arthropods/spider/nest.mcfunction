#Zero_4793

execute if block ~ ~ ~ cobweb unless entity @e[type=spider,tag=queen,distance=..4] unless entity @e[type=armor_stand,tag=spider_nest,distance=..4] run tag @s add KILL
execute if block ~ ~ ~ cobweb unless entity @e[type=spider,tag=queen,distance=..4] unless entity @e[type=armor_stand,tag=spider_nest,distance=..4] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 cobweb replace #zero:air
execute if block ~ ~ ~ cobweb unless entity @e[type=spider,tag=queen,distance=..4] unless entity @e[type=armor_stand,tag=spider_nest,distance=..4] run setblock ~ ~ ~ white_wool
execute if block ~ ~ ~ white_wool unless entity @e[type=spider,tag=queen,distance=..4] unless entity @e[type=armor_stand,tag=spider_nest,distance=..4] run summon armor_stand ~ ~ ~ {Small:1,Invisible:1,NoGravity:1,Tags:[spider_nest]}
