#Zero_4793

execute if block ~ ~ ~ cobweb unless entity @e[type=spider,tag=queen,distance=..4] unless entity @e[type=armor_stand,tag=spider_nest,distance=..4] run tag @s add spawn
execute as @s[tag=spawn] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 cobweb replace air
execute as @s[tag=spawn] run setblock ~ ~ ~ white_wool
execute as @s[tag=spawn] run summon armor_stand ~ ~ ~ {Small:1b,Invisible:1b,NoGravity:1b,Tags:[spider_nest]}
execute as @s[tag=spawn] run kill @s
