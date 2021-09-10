# http://www.ityouknow.com/python/2019/12/29/python-excel-103.html

import xlrd #read
import xlwt #write

#read
rb = xlrd.open_workbook("test_r.xlsx")
sh = rb.sheet_by_name('Sheet1')
sh.cell_value(0, 0)
sh.row_values(0) 
sh.col_values(0)

#write
wb = xlwt.Workbook()
sh = wb.add_sheet('Sheet1')
sh.write(0, 0, 'aaa')
wb.save('test_w.xls')
