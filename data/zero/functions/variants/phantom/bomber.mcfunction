#Zero_4793

scoreboard players add @s zero.time 1
execute if score @s zero.time matches 120 run summon creeper
execute if score @s zero.time matches 120 run effect give @e[type=creeper,distance=..1] slow_falling 60 0 true
execute if score @s zero.time matches 120 run scoreboard players set @s zero.time 0
