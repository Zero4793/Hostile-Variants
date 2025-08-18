#Zero_4793
scoreboard players add @s zero.age 1
execute at @e[type=#zero:zombies,tag=boss,distance=1..512] if score @e[type=#zero:zombies,tag=boss,distance=..1,limit=1] zero.age >= @s zero.age run tag @s add tank


tag @s[tag=tank] remove boss
tag @s[tag=tank] remove set

execute as @s[tag=!set] run item replace entity @s armor.head with diamond_helmet
execute as @s[tag=!set] run item replace entity @s armor.chest with diamond_chestplate
execute as @s[tag=!set] run item replace entity @s armor.legs with diamond_leggings
execute as @s[tag=!set] run item replace entity @s armor.feet with diamond_boots
execute as @s[type=zombie,tag=!set] run item replace entity @s weapon.mainhand with diamond_sword
execute as @s[type=husk,tag=!set] run item replace entity @s weapon.mainhand with diamond_axe
execute as @s[type=drowned,tag=!set] run item replace entity @s weapon.mainhand with trident
execute as @s[type=zombie_villager,tag=!set] run item replace entity @s weapon.mainhand with diamond_hoe
effect give @s[tag=!set] slowness infinite 0 true
attribute @s[tag=!set] generic.scale base set 1.1
tag @s[tag=!tank] add set


#horde
execute at @e[type=#zero:zombies,distance=64..256] run particle cloud ~ ~.8 ~ .2 .6 .2 0 20
tp @e[type=#zero:zombies,distance=64..256] ^ ^ ^1

#bossfight
# execute as @s[tag=!tank] if entity @e[type=zombie,distance=1..16] run tag @s add bossfight
# execute as @s[tag=!tank] unless entity @e[type=zombie,distance=1..16] run tag @s remove bossfight
# effect give @s[tag=bossfight] resistance 1 200 true
# effect give @s[tag=bossfight] glowing 1 200 true


