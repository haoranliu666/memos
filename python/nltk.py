#Natural Language Toolkit
#https://www.nltk.org

import nltk

sentence = "At eight o'clock on Thursday morning Arthur didn't feel very good."
tokens = nltk.word_tokenize(sentence) #token 分块化
tagged = nltk.pos_tag(tokens) #tag 词性标签
entities = nltk.chunk.ne_chunk(tagged) #named entities 

from nltk.book import *

#text3 圣经
#text7 Wall Street Journal

#all apperances of a word
text1.concordance("monstrous")
#words have similar usage
text1.similar("monstrous")
text2.similar("monstrous")
#same contexts of words 
text2.common_contexts(["monstrous", "very"])
#word location
text4.dispersion_plot(["citizens", "democracy", "freedom", "duties", "America"])
#random text
text3.generate()

#number of tokens, words and punctuation symbols
len(text3)
#number of unique tonkens
len(set(text3))
#have a look
text3[0:100]
sorted(set(text3))[0:100]
#lexical richness
len(set(text3))/len(text3)
#count a specific word
text3.count("a")
100 * text3.count('a') / len(text3)

#show the word
text4[173]
#first index
text4.index('awaken')

a = ' '.join(['Monty', 'Python', 'haha'])
a.split()
b = '.'.join(['Monty', 'Python', 'haha'])
b.split('.')
