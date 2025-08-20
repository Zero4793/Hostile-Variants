#Zero_4793

execute as @e[type=enderman,tag=!set] store result score @s random run random value 1..64
execute as @e[type=enderman,tag=!set,scores={random=1}] run data merge entity @s {carriedBlockState:{Name:netherrack}}
execute as @e[type=enderman,tag=!set,scores={random=2}] run data merge entity @s {carriedBlockState:{Name:end_stone}}
execute as @e[type=enderman,tag=!set,scores={random=3}] run data merge entity @s {carriedBlockState:{Name:grass_block}}
execute as @e[type=enderman,tag=!set,scores={random=4..10}] run tag @s add dementor
execute as @e[type=enderman,tag=!set,scores={random=11..20}] run tag @s add darkness


tag @e[type=enderman] add set


execute as @e[type=enderman] at @s run tag @e[type=#zero:hostile,type=!enderman,distance=..8] add ender
execute as @e[type=#zero:hostile,tag=ender] at @s run function hostile_variants:enderman/ender

#angry darkness and/or dementor summon
execute as @e[type=enderman] at @s if data entity @s {AngerTime:0} run tag @s remove angry
execute as @e[type=enderman,tag=!angry] at @s unless data entity @s {AngerTime:0} run tag @s add seen

execute as @e[type=enderman,tag=seen,tag=darkness] at @s run effect give @a[distance=..16] darkness 6 6 true
execute as @e[type=enderman,tag=seen,tag=dementor] at @s as @e[limit=4] run summon phantom ~ ~3 ~ {Tags:["dementor","checked"]}
tag @e[type=enderman,tag=seen] add angry
tag @e[type=enderman,tag=seen] remove seen

