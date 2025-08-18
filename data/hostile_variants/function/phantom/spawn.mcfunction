#Zero_4793

#witchy
execute as @s[tag=witchy_spawn] run summon phantom ~ ~ ~ {Size:6,Tags:[checked,witchy],Passengers:[{id:witch}]}

#turret
execute as @s[tag=turret_spawn] run summon phantom ~ ~ ~ {Size:6,Tags:[checked,turret],Passengers:[{id:blaze},{id:blaze},{id:blaze},{id:blaze},{id:blaze},{id:blaze},{id:blaze},{id:blaze}]}

#bomber
execute as @s[tag=bomber_spawn] run summon phantom ~ ~ ~ {Size:6,Tags:[checked,bomber],Passengers:[{id:creeper},{id:creeper},{id:creeper},{id:creeper},{id:creeper},{id:creeper},{id:creeper},{id:creeper}]}

#evoker
execute as @s[tag=evoker_spawn] run summon phantom ~ ~ ~ {Size:6,Tags:[checked,evoker],Passengers:[{id:evoker}]}

#dementor
execute as @s[tag=demons_spawn] as @e[limit=8] run summon phantom ~ ~ ~ {Tags:[checked,dementor]}

#all
effect give @e[type=phantom,distance=..1] health_boost infinite 9 true
effect give @e[type=phantom,distance=..1] instant_damage 1 100 true
tag @s add EXILE
