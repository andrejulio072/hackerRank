import sys

def splitCap(string, option):

    letters = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'X', 'W', 'Y', 'Z' ]

    for letter in letters:

        if(string.find(letter) != -1):

            string =  string.replace(letter, ' '+letter.lower())

            if(option == 'M'):
                string =  string.split('()')[0]

    return string.strip()


def combineVAndM(string):

    string = string.split(' ')
    count = 0
    newWord = ''

    for s in string:

        if(count == 0):
            newWord = s
            count = 1

        elif(count != 0 ):
            newWord += s.capitalize()

    return newWord.strip()


def combineString(string, option):
    if(option == 'V'):
        string = f"{combineVAndM(string)}"

    elif(option == 'M'):
        string = f"{combineVAndM(string)}()"

    elif(option == 'C'):
        string = string.title().split(' ')
        string = ''.join(string).strip()

    return string


for string_input in sys.stdin:

    string_input = string_input.split(';')

    if(string_input[0] == 'S'):
        print(splitCap(string_input[2], string_input[1]))

    elif(string_input[0] == 'C'):
        print(combineString(string_input[2], string_input[1]))
