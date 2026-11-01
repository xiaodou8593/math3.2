#math:center/_proj
# 把数据模板投射到临时对象
# 输入数据模板storage math:io input

execute store result score x int run data get storage math:io input.x 10000
execute store result score y int run data get storage math:io input.y 10000
execute store result score z int run data get storage math:io input.z 10000