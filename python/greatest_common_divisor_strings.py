class Solution:
    def gcdOfStrings(self, str1: str, str2: str) -> str:
        #Check for the condition
        if str1 + str2 != str2 + str1:
            return ""

        #Compute GCD of lengths manually
        a, b = len(str1), len(str2)
        while b != 0:
            a, b = b, a % b

        #Return the largest possible divisor string
        return str1[:a]