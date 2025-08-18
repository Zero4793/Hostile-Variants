execute if predicate hostile_variants:dark run tag @s add tiny
execute unless predicate hostile_variants:dark run tag @s add giant

#tiny
attribute @s[tag=tiny,tag=!set] generic.scale base set 0.1
attribute @s[tag=tiny,tag=!set] generic.movement_speed base set 0.5
attribute @s[tag=tiny,tag=!set] generic.max_health base set 1
attribute @s[tag=tiny,tag=!set] generic.attack_damage base set 1

#giant
attribute @s[tag=giant,tag=!set] generic.scale base set 2
attribute @s[tag=giant,tag=!set] generic.movement_speed base set .2
attribute @s[tag=giant,tag=!set] generic.max_health base set 100
attribute @s[tag=giant,tag=!set] generic.attack_damage base set 10

tag @s add set
