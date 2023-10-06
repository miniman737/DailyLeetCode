class Solution:
    def majorityElement(self, nums: List[int]) -> List[int]:
        size = len(nums)
        floor = size//3
        c1 = Counter(nums)
        emptyList =[]
        # print(c1)
        for x in c1:
            if c1[x] > floor:
                emptyList.append(x)
        return emptyList
