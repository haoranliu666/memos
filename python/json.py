import json

#open
with open('aaa.json', 'r') as handle:
    aaa = json.load(handle)

#save
with open('bbb.json', 'w') as handle:
    json.dump(bbb, handle, indent=2)
