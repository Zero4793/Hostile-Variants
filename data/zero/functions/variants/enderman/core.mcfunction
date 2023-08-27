#Zero_4793

execute as @e[type=enderman] at @s run tag @e[type=#zero:hostile,type=!enderman,distance=..8] add ender
execute as @e[type=enderman] at @s run effect give @a[distance=..8] blindness 2 0 true

execute as @e[type=#zero:hostile,tag=ender] at @s run function zero:variants/enderman/ender