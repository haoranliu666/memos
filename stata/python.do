*https://www.stata.com/python/api17/
*https://www.stata.com/python/api17/Data.html
*https://www.stata.com/python/api17/Datetime.html

// python query

// python des
python clear

use "http://www.stata-press.com/data/r17/iris", clear

python

import sfi
from sfi import Data

import numpy as np
import pandas as pd

X = np.array(Data.get("seplen sepwid petlen petwid"))
y = np.array(Data.get("iris"))

z = y + 1

Data.addVarByte('zzz')
Data.store('zzz', None, z)

end
