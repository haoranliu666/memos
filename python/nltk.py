#Natural Language Toolkit
#https://www.nltk.org

import nltk

sentence = "At eight o'clock on Thursday morning Arthur didn't feel very good."
tokens = nltk.word_tokenize(sentence) #token 分块化
tagged = nltk.pos_tag(tokens) #tag 词性标签
entities = nltk.chunk.ne_chunk(tagged) #named entities 
