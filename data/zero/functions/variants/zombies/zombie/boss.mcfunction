#Zero_4793

execute as @s[tag=!set] run item replace entity @s armor.head with diamond_helmet
execute as @s[tag=!set] run item replace entity @s armor.chest with diamond_chestplate
execute as @s[tag=!set] run item replace entity @s armor.legs with diamond_leggings
execute as @s[tag=!set] run item replace entity @s armor.feet with diamond_boots
execute as @s[tag=!set] run item replace entity @s weapon.mainhand with diamond_sword
tag @s add set

#only 1
execute if entity @e[type=#zero:zombies,tag=boss,distance=1..256] run tag @s add tank
execute if entity @e[type=#zero:zombies,tag=boss,distance=1..256] run tag @s remove set
execute if entity @e[type=#zero:zombies,tag=boss,distance=1..256] run tag @s remove boss

#horde
execute at @e[type=#zero:zombies,distance=64..256] run particle cloud ~ ~.8 ~ .2 .6 .2 0 20
tp @e[type=#zero:zombies,distance=64..256] ^ ^ ^1