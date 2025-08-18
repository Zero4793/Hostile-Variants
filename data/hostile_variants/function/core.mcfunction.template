#Zero_4793

#Spawn
execute as @e[type=MOB,tag=!checked,tag=!NAMETAG,name="NAMETAG"] run data merge entity @s {Tags:["NAMETAG","checked"]}


#Randomise
execute as @e[type=MOB,tag=!checked] store result score @s random run random value 0..50
execute as @e[type=MOB,tag=!checked,scores={random=00..15}] run tag @s add NAMETAG
tag @e[type=MOB] add checked


#Execute
execute as @e[type=MOB,tag=NAMETAG] at @s run function hostile_variants:MOB/NAMETAG


