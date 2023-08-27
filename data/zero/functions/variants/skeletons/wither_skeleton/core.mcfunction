#Zero_4793

#Spawn
execute as @e[type=wither_skeleton,tag=!checked,tag=!normal,name="normal"] run data merge entity @s {Tags:["normal","checked"]}
execute as @e[type=wither_skeleton,tag=!checked,tag=!fire,name="fire"] run data merge entity @s {Tags:["fire","checked"]}
execute as @e[type=wither_skeleton,tag=!checked,tag=!tank,name="tank"] run data merge entity @s {Tags:["tank","checked"]}
execute as @e[type=wither_skeleton,tag=!checked,tag=!boss,tag=!tank,name="boss"] run data merge entity @s {Tags:["boss","checked"]}


#Randomise
execute as @e[type=wither_skeleton,tag=!checked,scores={zero.num=00..00}] run tag @s add boss
execute as @e[type=wither_skeleton,tag=!checked,scores={zero.num=01..16}] run tag @s add tank
execute as @e[type=wither_skeleton,tag=!checked,scores={zero.num=17..32}] run tag @s add fire
execute as @e[type=wither_skeleton,tag=!checked,scores={zero.num=33..64}] run tag @s add normal
execute as @e[type=wither_skeleton,tag=!checked,scores={zero.num=00..}] run tag @s add checked
scoreboard players set @e[type=wither_skeleton,tag=!checked] zero.rng 64


#Execute
execute as @e[type=wither_skeleton,tag=fire] at @s run function zero:variants/skeletons/wither_skeleton/fire
execute as @e[type=wither_skeleton,tag=tank] at @s run function zero:variants/skeletons/wither_skeleton/tank
execute as @e[type=wither_skeleton,tag=boss] at @s run function zero:variants/skeletons/wither_skeleton/boss
