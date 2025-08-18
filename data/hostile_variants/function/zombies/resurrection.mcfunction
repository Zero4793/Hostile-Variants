#Zero_4793

scoreboard players add @s zero.age 1
execute if score @s zero.age matches ..1100 at @s unless entity @e[type=zombie,tag=necro,distance=..16] run particle minecraft:smoke ~ ~ ~ .1 .2 .1 0 1 normal @a
execute if score @s zero.age matches 1100.. at @s unless entity @e[type=zombie,tag=necro,distance=..16] run particle minecraft:smoke ~ ~ ~ .2 .6 .2 0 10 normal @a
execute at @s if entity @e[type=zombie,tag=necro,distance=..16] run particle minecraft:smoke ~ ~ ~ .2 .6 .2 0 10 normal @a


#if necro near
execute if score @s zero.age matches 1200.. at @s if entity @e[type=zombie,tag=necro,distance=..16] if block ~ ~ ~ water run summon drowned ~ ~-2 ~ {Tags:[rotten]}
execute if score @s zero.age matches 1200.. at @s if entity @e[type=zombie,tag=necro,distance=..16] if block ~ ~-1 ~ #sand run summon husk ~ ~-2 ~ {Tags:[rotten]}
execute if score @s zero.age matches 1200.. at @s if entity @e[type=zombie,tag=necro,distance=..16] if block ~ ~-1 ~ netherrack run summon zombified_piglin ~ ~-2 ~ {Tags:[rotten]}
execute if score @s zero.age matches 1200.. at @s if entity @e[type=zombie,tag=necro,distance=..16] unless block ~ ~ ~ water unless block ~ ~-1 ~ #sand unless block ~ ~-1 ~ netherrack run summon zombie ~ ~-2 ~ {Tags:[rotten]}
execute at @s if entity @e[type=zombie,tag=necro,distance=..16] if score @s zero.age matches 1200.. run kill @s


#else
execute if score @s zero.age matches 1200.. at @s if block ~ ~ ~ water run summon drowned ~ ~-2 ~ {Tags:[set,rotten],CanPickUpLoot:true}
execute if score @s zero.age matches 1200.. at @s if block ~ ~-1 ~ #sand run summon husk ~ ~-2 ~ {Tags:[set,rotten],CanPickUpLoot:true}
execute if score @s zero.age matches 1200.. at @s if block ~ ~-1 ~ netherrack run summon zombified_piglin ~ ~-2 ~ {Tags:[set,rotten],CanPickUpLoot:true}
execute if score @s zero.age matches 1200.. at @s unless block ~ ~ ~ water unless block ~ ~-1 ~ #sand unless block ~ ~-1 ~ netherrack run summon zombie ~ ~-2 ~ {Tags:[set,rotten],CanPickUpLoot:true}
execute if score @s zero.age matches 1200.. run kill @s
