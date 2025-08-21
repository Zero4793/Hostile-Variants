data merge entity @s[tag=!set] {Fuse:100,ExplosionRadius:0,Health:50,attributes:[{id:max_health,base:50.0},{id:scale,base:1.2},{id:movement_speed,base:0.2}]}
tag @s add set

execute if entity @a[distance=..6] run data merge entity @s {ignited:true,Tags:[queen,checked,set,boom]}

scoreboard players add @s[tag=boom] zero.time 1
# spawns many tiny creepers. size 0.1 hp 1 speed 0.3 Fuse 5 ExplosionRadius 0
execute if score @s zero.time matches 90 as @e[limit=24] run summon creeper ~ ~ ~ {Fuse:5,ExplosionRadius:0,Health:1,attributes:[{id:max_health,base:1.0},{id:scale,base:0.2},{id:movement_speed,base:0.3}],Tags:[checked]}
