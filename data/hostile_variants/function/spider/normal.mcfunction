#Zero_4793
execute if score zero.second server matches 0 if dimension minecraft:overworld if predicate hostile_variants:dark if block ~ ~ ~ air run setblock ~ ~ ~ cobweb

execute unless predicate hostile_variants:dark unless data entity @s Passengers[0] run ride @e[type=#zero:hostile,type=!spider,type=!cave_spider,tag=!unriding,sort=nearest,limit=1,distance=..2] mount @s
