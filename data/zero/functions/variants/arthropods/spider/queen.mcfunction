#Zero_4793

effect give @s[tag=!set] health_boost 10000 4 true
effect give @s[tag=!set] strength 10000 0 true
effect give @s[tag=!set] slowness 10000 4 true
effect give @s[tag=!set] instant_health 1 100 true
tag @s add set

execute if score zero.second server matches 0 if score zero.tick server matches 0 if block ~ ~ ~ cave_air run summon spider
particle campfire_cosy_smoke ~ ~.3 ~ .3 .3 .3 0 1