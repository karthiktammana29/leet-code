from itertools import zip_longest

# When the strings are equal zip can be used, however for unequal length zip_longest can be used
# and the result needs to be concatenated in the for loop

class Solution:
    def mergeAlternately(self, word1: str, word2: str) -> str:
        result = ""
        for w1, w2 in zip_longest(word1, word2,fillvalue=''):
            result += (w1+w2)
        return result