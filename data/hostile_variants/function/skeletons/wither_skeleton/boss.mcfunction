#Zero_4793

execute as @s[tag=!set] run item replace entity @s armor.head with netherite_helmet
execute as @s[tag=!set] run item replace entity @s armor.chest with netherite_chestplate
execute as @s[tag=!set] run item replace entity @s armor.legs with netherite_leggings
execute as @s[tag=!set] run item replace entity @s armor.feet with netherite_boots
execute as @s[tag=!set] run item replace entity @s weapon.mainhand with netherite_sword
effect give @s[tag=!set] health_boost infinite 9 true
effect give @s[tag=!set] instant_damage 1 100 true
tag @s add set