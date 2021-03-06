*while

local s = 0
local i = 1
while `i' <= 100{
  local s = `s' + `i'
  local i = `i' + 1
}
dis `s'


local s = 0
local i = 1
while `i' <= 100{
  local s = `s' + `i++'
}
dis `s'



*forvalues

local s = 0
forvalues i = 1/100{
  local s = `s' + `i'
}
dis `s'

matrix m = J(10, 3, 0) //create 10*3 matrix
forvalues i = 1/10{
  forvalues j = 1/3{
    mat m[`i', `j'] = `i' + `j'
  }
}
matrix list m




*foreach

use BMW.dta, clear
foreach file in BMW Benz Audi{
  append using `file'.txt, clear
}

sysuse auto, clear
global vars "price weight length"
foreach v of varlist $vars{
  gen ln_`v' = ln(`v')
  label variable ln_`v' "ln_`v'"
}




*if

forvalues x = 1/10{
  if mod(`x', 3) == 0{
    display 0
  }
  else if mod(`x', 3) == 1{
    display 1
  }
  else {
    display 2
  }
}

*continue


//805





