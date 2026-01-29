class Solution:
    def productExceptSelf(self, nums: List[int]) -> List[int]:
        #Check the length of the given input
        input_length = len(nums)
        #Define a new list with 1's
        final_list = [1]

        final_list = [1] * input_length

        #Multiply all the elements to the left, start by multiplying with 1
        #Array keeps updating in the loop
        left = 1
        for i in range(input_length):
            final_list[i] = left
            left *= nums[i]

        #Multiply all the elements to the right, use the range function to start, stop and step
        #Array keeps updating in the loop
        right = 1
        for i in range(input_length - 1, -1, -1):
            final_list[i] *= right
            right *= nums[i]

        return final_list
