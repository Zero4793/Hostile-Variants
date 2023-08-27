#Zero_4793

execute as @s[tag=!set] run item replace entity @s armor.head with golden_helmet
execute as @s[tag=!set] run item replace entity @s armor.chest with golden_chestplate
execute as @s[tag=!set] run item replace entity @s armor.legs with golden_leggings
execute as @s[tag=!set] run item replace entity @s armor.feet with golden_boots
execute as @s[tag=!set] run item replace entity @s weapon.mainhand with golden_axe
tag @s add set

#swarmer spawner
scoreboard players add @s zero.time 12
execute at @e[type=husk,tag=swarmer,distance=..16] run scoreboard players remove @s zero.time 1
execute if score @s zero.time matches 600.. run summon silverfish ~ ~ ~ {Tags:[checked,set,swarmer]}
execute if score @s zero.time matches 600.. run scoreboard players set @s zero.time 0

#look at silverfish/swarmer for next step
