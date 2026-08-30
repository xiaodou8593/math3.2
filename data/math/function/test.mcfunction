#math:test

tellraw @a "rotate test"

tp @s ~ ~ ~ 0.0 0.0
tellraw @a ["Rotation_1: ", {"nbt":"Rotation","entity":"@s"}]

data modify entity @s Rotation set value [783.0f,90.0f]
tellraw @a ["Rotation_2: ", {"nbt":"Rotation","entity":"@s"}]

data modify entity @s Rotation set value [783.0f,-90.0f]
tellraw @a ["Rotation_3: ", {"nbt":"Rotation","entity":"@s"}]