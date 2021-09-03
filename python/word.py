#pip install python-docx

from docx import Document

path = r"xxx.docx"

document = Document(path)
for paragraph in document.paragraphs:
    print(paragraph.text)
