execute as @s[tag=!set] run attribute @s minecraft:movement_speed base set 0.3
tag @s add unriding
tag @s add set

execute unless data entity @s Passengers[0] run ride @e[type=zombie,tag=!unriding,sort=nearest,limit=1,distance=..2] mount @s
execute unless data entity @s Passengers[0] run ride @e[type=husk,tag=!unriding,sort=nearest,limit=1,distance=..2] mount @s

execute if entity @e[type=#zero:zombies,distance=..16] run scoreboard players set @s zero.age 0
execute unless entity @e[type=#zero:zombies,distance=..16] run scoreboard players add @s zero.age 1
execute if score @s zero.age matches 1200.. run tp @s ~ ~-.05 ~
