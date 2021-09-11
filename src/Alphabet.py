
# No. of characters in string
def word_length(sentence):
    """This  method is used to find the no. of characters in a string without considering spaces, but the punctuations
    and numbers will also be considered as part of characters """
    r = sentence.replace(" ", "")
    size = len(r)
    return f'The number of characters in "{sentence}" is {size}'


# Matching Characters in the String
def matching_char(sentence, word):
    """this method is used to find the matching characters in a string and its case sensitive"""
    i = 0
    for char in sentence:
        if char == word:
            i += 1
    return f'No. of {word} in "{sentence}" is {i}'


# Reverse of String
def reverse(sentence):
    """this method is used to produce the reverse of the given string and no changes to spaces or Case of a
    character"""
    return 'The reverse of String: ' + sentence[::-1]


# Check for Palindrome
def palindrome_or_not(sentence):
    """this method removes the spaces in the string and compares whether the reverse of the string is equal to the
    actual string and gives whether its palindrome or not"""
    r = sentence.replace(' ', '')
    if r[::-1].lower() == r.lower():
        return 'Its a Palindrome'
    else:
        return 'Its Not a Palindrome'

