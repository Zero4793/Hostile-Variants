#Zero_4793

execute as @s[tag=!set] run item replace entity @s armor.head with golden_helmet
execute as @s[tag=!set] run item replace entity @s armor.chest with leather_chestplate{display:{color:15881752}}
execute as @s[tag=!set] run item replace entity @s armor.legs with leather_leggings{display:{color:15881752}}
execute as @s[tag=!set] run item replace entity @s armor.feet with leather_boots{display:{color:15881752}}
execute as @s[tag=!set] run item replace entity @s weapon.mainhand with bow
execute as @s[tag=!set] run enchant @s flame 1
tag @s add set