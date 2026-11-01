#math:center/_model
# 使用临时对象构建数据模板
# 输出数据模板storage math:io result

data modify storage math:io result set value {x:0, y:0, z:0}

execute store result storage math:io result.x double 0.0001 run scoreboard players get x int
execute store result storage math:io result.y double 0.0001 run scoreboard players get y int
execute store result storage math:io result.z double 0.0001 run scoreboard players get z int