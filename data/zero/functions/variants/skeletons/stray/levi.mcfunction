#Zero_4793

execute as @s[tag=!set] run item replace entity @s weapon.mainhand with bow
tag @s add set

scoreboard players remove @s zero.time 1
execute if entity @e[type=#zero:anti_hostile,distance=..4] if score @s zero.time matches ..0 run effect give @s levitation 1 12 true
execute if entity @e[type=#zero:anti_hostile,distance=..4] if score @s zero.time matches ..0 run effect give @s slow_falling 12 12 true
execute if entity @e[type=#zero:anti_hostile,distance=..4] if score @s zero.time matches ..0 run scoreboard players set @s zero.time 300