class Solution:
    #Reverse the vowels in a given string
    def reverseVowels(self, s: str) -> str:
        #Define all the vowels
        vowels = set('aeiouAEIOU')
        s_list = list(s)

        #Introduce 2 counters, one pointing to left and other pointing to right
        l_counter, r_counter = 0, len(s_list) - 1
        #Since there are 2 pointers, it has to stop when left_counter > right_counter
        while l_counter < r_counter:
            #Increase the left counter if not an vowel
            if s_list[l_counter] not in vowels:
                l_counter += 1
            # Decrease the right counter if not an vowel
            elif s_list[r_counter] not in vowels:
                r_counter -= 1
            #If both are vowels, swap the positions and increase the counter
            else:
                s_list[l_counter], s_list[r_counter] = s_list[r_counter], s_list[l_counter]
                l_counter += 1
                r_counter -= 1

        return "".join(s_list)
