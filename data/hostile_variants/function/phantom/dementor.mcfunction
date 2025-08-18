# Dementor set
execute as @e[type=phantom,tag=dementor,tag=!set] run data merge entity @s {attributes:[{id:generic.max_health,base:1.0},{id:generic.attack_damage,base:0}],Health:1,Silent:1b}
effect give @e[type=phantom,tag=dementor,tag=!set] minecraft:invisibility infinite 1 true
tag @e[type=phantom,tag=dementor] add set

# Dementor tick
execute as @e[type=phantom,tag=dementor] run data merge entity @s {Fire:-1s}
execute at @e[type=phantom,tag=dementor] run particle minecraft:dust{color:[0,0,0,],scale:4} ~ ~ ~ 0 0 0 1 0
execute at @e[type=phantom,tag=dementor] unless entity @a[distance=..4] run particle minecraft:dust{color:[1,0,1],scale:1.6} ~ ~ ~ 0 0 0 1 0
execute at @e[type=phantom,tag=dementor] if entity @a[distance=..4] run particle minecraft:dust{color:[1,0,0],scale:1.6} ~ ~ ~ 0 0 0 1 0
execute at @e[type=phantom,tag=dementor] unless entity @a[distance=..4] run playsound minecraft:entity.enderman.ambient hostile @a ~ ~ ~ .2 0
execute at @e[type=phantom,tag=dementor] if entity @a[distance=..4] run playsound minecraft:entity.enderman.ambient hostile @a ~ ~ ~ .2 2
execute at @e[type=phantom,tag=dementor] run effect give @a[distance=..2] minecraft:levitation 1 2 true