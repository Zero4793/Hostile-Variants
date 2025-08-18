#Zero_4793

#General
execute as @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}}] at @s run function hostile_variants:zombies/resurrection
execute as @e[type=#zero:zombies,tag=rotten] at @s run function hostile_variants:zombies/rotten

#subclass
function hostile_variants:zombies/zombie/core
function hostile_variants:zombies/husk/core
function hostile_variants:zombies/drowned/core
function hostile_variants:zombies/zombie_villager/core
