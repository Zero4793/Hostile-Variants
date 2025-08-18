#Zero_4793

execute as @s[tag=!set] run item replace entity @s armor.head with iron_helmet
execute as @s[tag=!set] run item replace entity @s armor.chest with iron_chestplate
execute as @s[tag=!set] run item replace entity @s armor.legs with iron_leggings
execute as @s[tag=!set] run item replace entity @s armor.feet with iron_boots[enchantments={frost_walker:2}]
execute as @s[tag=!set] run item replace entity @s weapon.mainhand with bow[enchantments={punch:3}]
tag @s add set