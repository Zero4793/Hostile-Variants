#Zero_4793

execute as @s[tag=!set] run item replace entity @s armor.head with diamond_helmet
execute as @s[tag=!set] run item replace entity @s armor.chest with diamond_chestplate
execute as @s[tag=!set] run item replace entity @s armor.legs with diamond_leggings
execute as @s[tag=!set] run item replace entity @s armor.feet with diamond_boots
effect give @s[tag=!set] health_boost 10000 9 true
effect give @s[tag=!set] instant_damage 1 100 true
tag @s add set

#shoot
scoreboard players add @s zero.time 1
execute if score @s zero.time matches 1 run item replace entity @s weapon.mainhand with bow{Enchantments:[{id:power,lvl:5},{id:flame,lvl:1},{id:punch,lvl:2}]}

#teleport
execute if score @s zero.time matches 1..240 if entity @e[type=#zero:anti_hostile,distance=..4] run tp @e[type=#zero:skeletons,limit=1,sort=random,distance=1..32] @s
execute if score @s zero.time matches 1..240 if entity @e[type=#zero:anti_hostile,distance=..4] run summon arrow ~1 ~4 ~1 {Tags:[temp,safe]}
execute if score @s zero.time matches 1..240 if entity @e[type=#zero:anti_hostile,distance=..4] run summon arrow ~ ~4 ~1 {Tags:[temp,safe]}
execute if score @s zero.time matches 1..240 if entity @e[type=#zero:anti_hostile,distance=..4] run summon arrow ~-1 ~4 ~1 {Tags:[temp,safe]}
execute if score @s zero.time matches 1..240 if entity @e[type=#zero:anti_hostile,distance=..4] run summon arrow ~1 ~4 ~ {Tags:[temp,safe]}
execute if score @s zero.time matches 1..240 if entity @e[type=#zero:anti_hostile,distance=..4] run summon arrow ~-1 ~4 ~ {Tags:[temp,safe]}
execute if score @s zero.time matches 1..240 if entity @e[type=#zero:anti_hostile,distance=..4] run summon arrow ~1 ~4 ~-1 {Tags:[temp,safe]}
execute if score @s zero.time matches 1..240 if entity @e[type=#zero:anti_hostile,distance=..4] run summon arrow ~ ~4 ~-1 {Tags:[temp,safe]}
execute if score @s zero.time matches 1..240 if entity @e[type=#zero:anti_hostile,distance=..4] run summon arrow ~-1 ~4 ~-1 {Tags:[temp,safe]}
execute if score @s zero.time matches 1..240 if entity @e[type=#zero:anti_hostile,distance=..4] run spreadplayers ~ ~ 16 32 false @s

#mage
execute if score @s zero.time matches 240 run item replace entity @s weapon.mainhand with trident
execute if score @s zero.time matches 240 run effect give @s slowness 18 20 true

#rain arrows
execute if score @s zero.time matches 240..480 run tag @e[type=#zero:anti_hostile,sort=random,limit=1,distance=4..16] add zero.skeleton.target
execute at @e[type=#zero:anti_hostile,tag=zero.skeleton.target] run summon arrow ~1 ~4 ~1 {Tags:[temp]}
execute at @e[type=#zero:anti_hostile,tag=zero.skeleton.target] run summon arrow ~ ~4 ~1 {Tags:[temp]}
execute at @e[type=#zero:anti_hostile,tag=zero.skeleton.target] run summon arrow ~-1 ~4 ~1 {Tags:[temp]}
execute at @e[type=#zero:anti_hostile,tag=zero.skeleton.target] run summon arrow ~1 ~4 ~ {Tags:[temp]}
execute at @e[type=#zero:anti_hostile,tag=zero.skeleton.target] run summon arrow ~ ~4 ~ {Tags:[temp]}
execute at @e[type=#zero:anti_hostile,tag=zero.skeleton.target] run summon arrow ~-1 ~4 ~ {Tags:[temp]}
execute at @e[type=#zero:anti_hostile,tag=zero.skeleton.target] run summon arrow ~1 ~4 ~-1 {Tags:[temp]}
execute at @e[type=#zero:anti_hostile,tag=zero.skeleton.target] run summon arrow ~ ~4 ~-1 {Tags:[temp]}
execute at @e[type=#zero:anti_hostile,tag=zero.skeleton.target] run summon arrow ~-1 ~4 ~-1 {Tags:[temp]}
tag @e remove zero.skeleton.target

#cycle
execute if score @s zero.time matches 480 run scoreboard players set @s zero.time 0

#anti arrow
tag @e[type=arrow,distance=..2] add safe
execute at @e[type=arrow,distance=..4,tag=!safe] run particle cloud ~ ~ ~ 0 0 0 0 1
kill @e[type=arrow,distance=..4,tag=!safe]