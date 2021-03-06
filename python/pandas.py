#https://pandas.pydata.org/docs/user_guide/10min.html

import numpy as np
import pandas as pd

s = pd.Series([1, 3, 5, np.nan, 6, 8])

dates = pd.date_range('20130101', periods=6)

df = pd.DataFrame(np.random.randn(6, 4), index=dates, columns=list('ABCD'))

df2 = pd.DataFrame({'A': 1.,
'B': pd.Timestamp('20130102'),
'C': pd.Series(1, index=list(range(4)), dtype='float32'),
'D': np.array([3] * 4, dtype='int32'),
'E': pd.Categorical(["test", "train", "test", "train"]),
'F': 'foo'})

df2.dtypes

df.head()
df.tail()

df.index

df.describe()

df.columns #column name

df.T #transpose

df.sort_index(axis=1, ascending=False)
df.sort_values(by='B')

df['A']

df[0:3]


#delete
#https://blog.csdn.net/songyunli1111/article/details/79306639
df.drop(columns=['A', 'B'])
df.drop(index=[0, 1])

#get data
#https://blog.csdn.net/sinat_29675423/article/details/87975489
df.sort_values(by=['col1', 'col2'])

#sort
#https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.sort_values.html
df.sort_values

df.reset_index(drop=True, inplace=True)

#add new column
#https://blog.csdn.net/qq_35318838/article/details/102720553
data['z'] = x

#save stata
#https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.to_stata.html
df.to_stata('aaa.dta', version = 117)

#read csv
pandas.read_csv()
us = pd.read_csv('us-area-code-cities.csv', header=None)

#read stata
jw_city = pd.read_stata('jw_city.dta')
