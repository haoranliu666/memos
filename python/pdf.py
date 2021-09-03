#pip install pdfplumber
#this is not working really well
#better to transfer the pdf to word firstly using adobe acrobat pro

import pdfplumber

pdf_path = "xxx.pdf"

with pdfplumber.open(pdf_path) as pdf:
    page = pdf.pages[2]
    text = page.extract_text()
    print(text)
