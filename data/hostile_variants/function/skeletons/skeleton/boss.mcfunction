#Zero_4793

execute as @s[tag=!set] run item replace entity @s armor.head with diamond_helmet
execute as @s[tag=!set] run item replace entity @s armor.chest with diamond_chestplate
execute as @s[tag=!set] run item replace entity @s armor.legs with diamond_leggings
execute as @s[tag=!set] run item replace entity @s armor.feet with diamond_boots
effect give @s[tag=!set] health_boost infinite 9 true
effect give @s[tag=!set] instant_damage 1 100 true
tag @s add set

#shoot
scoreboard players add @s zero.age 1
execute if score @s zero.age matches 1 run item replace entity @s weapon.mainhand with bow[enchantments={power:5,flame:1,punch:2}]

#teleport
execute if score @s zero.age matches 1..240 if entity @e[type=#zero:anti_hostile,distance=..4] if entity @e[type=#zero:skeletons,tag=!boss,distance=..32] run tag @s add tp
execute as @s[tag=tp] run tp @e[type=#zero:skeletons,limit=1,sort=random,distance=1..32] @s
execute as @s[tag=tp] run summon arrow ~1 ~4 ~1 {Tags:[temp,safe]}
execute as @s[tag=tp] run summon arrow ~ ~4 ~1 {Tags:[temp,safe]}
execute as @s[tag=tp] run summon arrow ~-1 ~4 ~1 {Tags:[temp,safe]}
execute as @s[tag=tp] run summon arrow ~1 ~4 ~ {Tags:[temp,safe]}
execute as @s[tag=tp] run summon arrow ~-1 ~4 ~ {Tags:[temp,safe]}
execute as @s[tag=tp] run summon arrow ~1 ~4 ~-1 {Tags:[temp,safe]}
execute as @s[tag=tp] run summon arrow ~ ~4 ~-1 {Tags:[temp,safe]}
execute as @s[tag=tp] run summon arrow ~-1 ~4 ~-1 {Tags:[temp,safe]}
execute as @s[tag=tp] run spreadplayers ~ ~ 8 32 false @s
effect give @s[tag=tp] glowing 3 1 true
tag @s remove tp

#mage
execute if score @s zero.age matches 240 run item replace entity @s weapon.mainhand with trident
execute if score @s zero.age matches 240 run effect give @s slowness 18 20 true

#rain arrows
execute if score zero.tick server matches 0 if score @s zero.age matches 240..480 run tag @e[type=#zero:anti_hostile,distance=4..16] add zero.skeleton.target
execute if score zero.tick server matches 5 if score @s zero.age matches 240..480 run tag @e[type=#zero:anti_hostile,distance=4..16] add zero.skeleton.target
execute if score zero.tick server matches 10 if score @s zero.age matches 240..480 run tag @e[type=#zero:anti_hostile,distance=4..16] add zero.skeleton.target
execute if score zero.tick server matches 15 if score @s zero.age matches 240..480 run tag @e[type=#zero:anti_hostile,distance=4..16] add zero.skeleton.target
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
execute if score @s zero.age matches 480 run scoreboard players set @s zero.age 0

#anti arrow
tag @e[type=arrow,distance=..2] add safe
execute at @e[type=arrow,distance=..4,tag=!safe] run particle cloud ~ ~ ~ 0 0 0 0 1
kill @e[type=arrow,distance=..4,tag=!safe]