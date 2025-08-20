execute if predicate hostile_variants:dark run tag @s add tiny
execute unless predicate hostile_variants:dark run tag @s add giant

#tiny
attribute @s[tag=tiny,tag=!set] scale base set .2
attribute @s[tag=tiny,tag=!set] movement_speed base set .2
attribute @s[tag=tiny,tag=!set] max_health base set 1
attribute @s[tag=tiny,tag=!set] attack_damage base set 1
attribute @s[tag=tiny,tag=!set] attack_knockback base set 0



#giant
attribute @s[tag=giant,tag=!set] scale base set 2
attribute @s[tag=giant,tag=!set] movement_speed base set .2
attribute @s[tag=giant,tag=!set] max_health base set 100
attribute @s[tag=giant,tag=!set] attack_damage base set 10
attribute @s[tag=giant,tag=!set] attack_knockback base set 2

tag @s add set
