class Solution:
    #Can also use a for loop using 3 params for range(start, stop, move backward by)
    def reverseWords(self, s: str) -> str:
        #Use the split functions to split the words with space in between
        s = s.split()
        #Reverse the sequence, do not reverse the list it will return None
        s.reverse()
        return ' '.join(s)