#Zero_4793
particle minecraft:portal ~ ~ ~ .2 .8 .2 .5 2 normal @a

execute if entity @e[type=#zero:anti_hostile,distance=..8] run scoreboard players add @s zero.ender 1
execute as @s[scores={zero.ender=1..}] unless entity @e[type=#zero:anti_hostile,distance=..8] run scoreboard players remove @s zero.ender 1
execute as @s[scores={zero.ender=..-1}] run scoreboard players add @s zero.ender 1

effect give @s[scores={zero.ender=20..}] slowness 1 10 true
execute as @s[scores={zero.ender=0..20}] if entity @e[type=#zero:anti_hostile,distance=..8] run particle minecraft:portal ~ ~ ~ .2 .8 .2 2 15 normal @a

execute if score @s zero.ender matches 60.. run spreadplayers ~ ~ 8 32 false @s
execute if score @s zero.ender matches 60.. run playsound entity.enderman.teleport hostile @a ~ ~ ~ 1 0.8
execute if score @s zero.ender matches 60.. run scoreboard players set @s zero.ender -360
