#Zero_4793

execute as @s[tag=!set,scores={random=00..00}] run data merge entity @s {Size:4}
execute as @s[tag=!set,scores={random=01..01}] run data merge entity @s {Size:3}
execute as @s[tag=!set,scores={random=02..03}] run data merge entity @s {Size:2}
execute as @s[tag=!set,scores={random=04..07}] run data merge entity @s {Size:1}
execute as @s[tag=!set,scores={random=08..15}] run summon phantom ~ ~ ~ {Tags:[normal,checked]}
tag @s add set

execute unless data entity @s Passengers[0] run ride @e[type=#zero:hostile,type=!phantom,tag=!unriding,sort=nearest,limit=1,distance=..2] mount @s
# execute if score zero.tick server matches 0 unless data entity @s Passengers[0] run ride @p[distance=..2] mount @s
