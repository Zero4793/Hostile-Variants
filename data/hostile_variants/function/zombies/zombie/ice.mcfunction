#Zero_4793

execute as @s[tag=!set] run item replace entity @s armor.head with ice
execute as @s[tag=!set] run item replace entity @s armor.feet with iron_boots[enchantments={levels:{"frost_walker":2}}]
effect give @s[tag=!set] slowness infinite 0 true
tag @s add set

execute as @e[type=#zero:undead,distance=..8] run data merge entity @s {Fire:-1s}

particle snowflake ~ ~1 ~ 4 2 4 0 1
particle snowflake ~ ~1 ~ .4 .8 .4 0 1

