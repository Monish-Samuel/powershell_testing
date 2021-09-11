import unittest
import Alphabet


class AlphaCheck(unittest.TestCase):

    # Test method for checking the number of characters in a string
    def test_word_length(self):
        self.assertEqual(Alphabet.word_length("Welcome to TCS"), 'The number of characters in "Welcome to TCS" is 12')
        self.assertEqual(Alphabet.word_length(""), 'The number of characters in "" is 0')

    # Test method to find the matching character in a string
    def test_matching_char(self):
        sent1 = Alphabet.matching_char("Hi everyone my name is Monish", 'o')
        self.assertEqual(sent1, 'No. of o in "Hi everyone my name is Monish" is 2')

        sent2 = Alphabet.matching_char("Hi everyone my name is Oswald", 'O')
        self.assertEqual(sent2, 'No. of O in "Hi everyone my name is Oswald" is 1')

    # Test method to check whether the reverse of a string is correct or not
    def test_reverse(self):
        rever = Alphabet.reverse('Hello Everyone')
        self.assertEqual(rever, 'The reverse of String: enoyrevE olleH')

    # Test method to check the palindrome of a string
    def test_palindrome_or_not(self):
        palinsent1 = Alphabet.palindrome_or_not('Hello Everyone')
        self.assertEqual(palinsent1, "Its Not a Palindrome")

        palinsent2 = Alphabet.palindrome_or_not('Race car')
        self.assertEqual(palinsent2, "Its a Palindrome")


if __name__ == '__main__':
    unittest.main()
