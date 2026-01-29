class Solution:
    def kidsWithCandies(self, candies: List[int], extraCandies: int) -> List[bool]:

        newCandieList = [candie + extraCandies for candie in candies]
        max_candies = max(candies)
        finalList = []
        for candie in newCandieList:
            if candie >= max_candies:
                finalList.append(True)
            else:
                finalList.append(False)

        return finalList