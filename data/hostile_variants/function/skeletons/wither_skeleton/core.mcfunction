#Zero_4793

#Spawn
execute as @e[type=wither_skeleton,tag=!checked,tag=!normal,name="normal"] run data merge entity @s {Tags:["normal","checked"]}
execute as @e[type=wither_skeleton,tag=!checked,tag=!fire,name="fire"] run data merge entity @s {Tags:["fire","checked"]}
execute as @e[type=wither_skeleton,tag=!checked,tag=!tank,name="tank"] run data merge entity @s {Tags:["tank","checked"]}
execute as @e[type=wither_skeleton,tag=!checked,tag=!boss,tag=!tank,name="boss"] run data merge entity @s {Tags:["boss","checked"]}
execute as @e[type=wither_skeleton,tag=!checked,tag=!archer,tag=!tank,name="archer"] run data merge entity @s {Tags:["archer","checked"]}


#Randomise
execute as @e[type=wither_skeleton,tag=!checked] store result score @s random run random value 0..100
execute as @e[type=wither_skeleton,tag=!checked,scores={random=00..00}] run tag @s add boss
execute as @e[type=wither_skeleton,tag=!checked,scores={random=01..16}] run tag @s add tank
execute as @e[type=wither_skeleton,tag=!checked,scores={random=17..32}] run tag @s add fire
execute as @e[type=wither_skeleton,tag=!checked,scores={random=33..40}] run tag @s add baby
execute as @e[type=wither_skeleton,tag=!checked,scores={random=41..50}] run tag @s add archer
tag @e[type=wither_skeleton] add checked


#Execute
execute as @e[type=wither_skeleton,tag=fire] at @s run function hostile_variants:skeletons/wither_skeleton/fire
execute as @e[type=wither_skeleton,tag=tank] at @s run function hostile_variants:skeletons/wither_skeleton/tank
execute as @e[type=wither_skeleton,tag=boss] at @s run function hostile_variants:skeletons/wither_skeleton/boss
execute as @e[type=wither_skeleton,tag=baby] at @s run function hostile_variants:skeletons/skeleton/baby
execute as @e[type=wither_skeleton,tag=archer] at @s run function hostile_variants:skeletons/wither_skeleton/archer
