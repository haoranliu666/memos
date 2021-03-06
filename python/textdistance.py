#https://pypi.org/project/textdistance/
import textdistance
textdistance.jaro_winkler('abc','zbc')
textdistance.jaro_winkler('abcdefg','zbcdefg')



##########
# https://blog.csdn.net/u014657795/article/details/90476489
# https://anaconda.org/conda-forge/python-levenshtein

# https://zhuanlan.zhihu.com/p/35740229
# https://anaconda.org/conda-forge/python-levenshtein/files

import Levenshtein

Levenshtein.distance('abc', 'abd')
