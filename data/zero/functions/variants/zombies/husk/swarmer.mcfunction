#Zero_4793

execute as @s[tag=!set] run item replace entity @s weapon.mainhand with stone_sword
tag @s add set

scoreboard players add @s zero.age 1
execute if score @s zero.age matches ..20 unless block ~ ~-.1 ~ #zero:no_hitbox run tp @s ~ ~.1 ~
execute if score @s zero.age matches ..30 run particle minecraft:smoke ~ ~ ~ .2 .4 .2 0 12 normal @a