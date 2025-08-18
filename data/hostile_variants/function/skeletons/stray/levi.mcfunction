#Zero_4793

execute as @s[tag=!set] run item replace entity @s weapon.mainhand with bow
tag @s add set

scoreboard players remove @s zero.age 1
execute if entity @e[type=#zero:anti_hostile,distance=..4] if score @s zero.age matches ..0 run effect give @s levitation 1 12 true
execute if entity @e[type=#zero:anti_hostile,distance=..4] if score @s zero.age matches ..0 run effect give @s slow_falling 4 12 true
execute if entity @e[type=#zero:anti_hostile,distance=..4] if score @s zero.age matches ..0 run scoreboard players set @s zero.age 300
execute if score @s zero.age matches 280..300 run particle cloud ~ ~ ~ 0 0 0 0 1
execute if score @s zero.age matches 220..270 run particle cloud ~ ~ ~ .3 0 .3 0 3
