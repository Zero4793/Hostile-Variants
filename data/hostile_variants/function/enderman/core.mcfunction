#Zero_4793

execute as @e[type=enderman,tag=!set] store result score @s random run random value 1..128
execute as @e[type=enderman,tag=!set,scores={random=1}] run data merge entity @s {carriedBlockState:{Name:netherrack}}
execute as @e[type=enderman,tag=!set,scores={random=2}] run data merge entity @s {carriedBlockState:{Name:end_stone}}
execute as @e[type=enderman,tag=!set,scores={random=3}] run data merge entity @s {carriedBlockState:{Name:grass_block}}
tag @e[type=enderman] add set


execute as @e[type=enderman] at @s run tag @e[type=#zero:hostile,type=!enderman,distance=..8] add ender
execute as @e[type=#zero:hostile,tag=ender] at @s run function hostile_variants:enderman/ender

#angry darkness