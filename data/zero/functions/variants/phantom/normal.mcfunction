#Zero_4793

execute as @s[tag=!set,scores={zero.num=00..00}] run data merge entity @s {Size:4}
execute as @s[tag=!set,scores={zero.num=01..01}] run data merge entity @s {Size:3}
execute as @s[tag=!set,scores={zero.num=02..03}] run data merge entity @s {Size:2}
execute as @s[tag=!set,scores={zero.num=04..07}] run data merge entity @s {Size:1}
execute as @s[tag=!set,scores={zero.num=08..15}] run summon phantom ~ ~ ~ {Tags:[nomral,checked]}
tag @s add set
