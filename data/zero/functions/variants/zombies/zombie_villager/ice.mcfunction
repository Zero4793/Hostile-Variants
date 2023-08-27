#Zero_4793

execute as @s[tag=!set] run item replace entity @s armor.head with ice
effect give @s[tag=!set] slowness 10000 0 true
tag @s add set

execute as @e[type=#zero:zombies,distance=..8] run data merge entity @s {Fire:-1s}
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 ice replace water
particle snowflake ~ ~1 ~ 4 2 4 0 1
particle snowflake ~ ~1 ~ .4 .8 .4 0 1
#execute at @e[type=#zero:zombies,distance=..8] run particle snowflake ~ ~1 ~ .4 .8 .4 0 1

