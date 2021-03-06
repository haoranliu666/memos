input x y
      1 2
      2 1
end

save "", replace
use "", replace

import excel "xxx.xls", clear sheet(sheet1) firstrow
import delimited

import
import excel
import delimited // insheet in the past
export

rename (x y z) (x1 y1 z1)

encode // 字符串-数字转换

append // 纵向合并数据
merge // 横向合并数据

xpose // 转置

reshape // 扁状数据转换

isid // 指标是否能识别唯一变量
duplicates report // 返回重复量
duplicates examples // 举例重复量
duplicates drop x y z, force // 强制删除重复量

mvdecode // 增加缺失值定义

destring // 字符串-数值转换

egen rmiss() // 产生缺失值dummy variable

winsor // 缩尾
