#pickle: save&load python objects
#https://www.youtube.com/watch?v=Pl4Hp8qwwes
#能用json优先用json

import pickle

data_old = 'Hello World!'

with open('saved_data.pickle', 'wb') as pickle_file:
    pickle.dump(data_old, pickle_file)
    
with open('saved_data.pickle', 'rb') as pickle_file:
    data_new = pickle.load(pickle_file)
    
print(data_new)
