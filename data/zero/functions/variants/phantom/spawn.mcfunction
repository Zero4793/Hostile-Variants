#Zero_4793

#witchy
execute as @s[tag=witchy_spawn] run summon phantom ~ ~ ~ {Size:6,Tags:[checked,witchy],Passengers:[{id:witch}]}
tag @s add KILL

#turret
execute as @s[tag=turret_spawn] run summon phantom ~ ~ ~ {Size:6,Tags:[checked,turret],Passengers:[{id:blaze},{id:blaze},{id:blaze},{id:blaze},{id:blaze},{id:blaze},{id:blaze},{id:blaze}]}
tag @s add KILL

#bomber
execute as @s[tag=bomber_spawn] run summon phantom ~ ~ ~ {Size:6,Tags:[checked,bomber],Passengers:[{id:creeper},{id:creeper},{id:creeper},{id:creeper},{id:creeper},{id:creeper},{id:creeper},{id:creeper}]}
tag @s add KILL

#evoker
execute as @s[tag=evoker_spawn] run summon phantom ~ ~ ~ {Size:6,Tags:[checked,evoker],Passengers:[{id:evoker}]}
tag @s add KILL

#all
effect give @e[type=phantom,distance=..1] health_boost 10000 9 true
effect give @e[type=phantom,distance=..1] instant_damage 1 100 true
scoreboard players set @s zero.num -1
tag @s remove checked
