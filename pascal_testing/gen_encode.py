

order = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"

def encode(char):
    index = order.find(char)
    out = order[(index-3+62)%62]
    return out


def encode_string(string):
    temp_output = ''
    for i in range(len(string)):
        temp_output += encode(string[i])
    return temp_output



namelist = []
with open('answer.txt','r') as f:
    data = f.readlines()

    for i in data:
        namelist.append(i.strip())

with open('question.txt','w') as f:
    for nameline in namelist:
        
        data = nameline.split('#')
        
        encoded_data = list(map(encode_string,data))
        f.write('{}#{}#{}\n'.format(encoded_data[0],encoded_data[1],encoded_data[2]))
