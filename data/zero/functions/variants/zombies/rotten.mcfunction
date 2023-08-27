#Zero_4793

scoreboard players add @s zero.age 1
execute if score @s zero.age matches ..20 unless block ~ ~-.1 ~ #zero:no_hitbox run tp @s ~ ~.1 ~
execute if score @s zero.age matches ..60 run particle minecraft:smoke ~ ~ ~ .2 .8 .2 0 20 normal @a
effect give @s slowness 1 0 true