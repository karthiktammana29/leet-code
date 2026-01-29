#To check if flower can be planted in the next plot for which check the number of plots that can be planted

class Solution:
    def canPlaceFlowers(self, flowerbed: List[int], n: int) -> bool:
        #Loop through all the elements in the list
        flowerbed=flowerbed[:] #Creating a copy of the list
        for i in range(len(flowerbed)):
            #Flower can be planted only if it's 0
            if (flowerbed[i] == 0):
                #Checking the status of left bed, if it's the starting element or the previous element is 0, it returns true
                left_bed_status = (i == 0 or flowerbed[i - 1] == 0)
                #Checking the status of right bed, if it's the last element or the next element is 0, it returns true
                right_bed_status = (i == len(flowerbed) - 1 or flowerbed[i + 1] == 0)

                #when both are true, the list is updated and the counter is reduced
                if left_bed_status and right_bed_status:
                    flowerbed[i] = 1
                    n -= 1

                    if n == 0:
                        return True

        #If the counter is 0 or less than 0, returns True else False
        return n <= 0