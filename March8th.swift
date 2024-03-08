//Problem number 3005 count number of maximum occurences

// You are given an array nums consisting of positive integers.

// Return the total frequencies of elements in nums such that those elements all have the maximum frequency.

// The frequency of an element is the number of occurrences of that element in the array.

 

// Example 1:

// Input: nums = [1,2,2,3,1,4]
// Output: 4
// Explanation: The elements 1 and 2 have a frequency of 2 which is the maximum frequency in the array.
// So the number of elements in the array with maximum frequency is 4.

class Solution {
    func maxFrequencyElements(_ nums: [Int]) -> Int {
        let countDictionary = Dictionary(grouping: nums, by: { $0 }).mapValues { $0.count }
        let sortedDic = countDictionary.sorted{$0.value > $1.value}
        var count = 0
        var baseCase :Int = 0
        if let firstEl = sortedDic.first{
            baseCase = firstEl.value
        }
        for element in sortedDic{
            let check :Int = element.value
            if check == baseCase{
                count = count + check
            }

        }
        // count = count - baseCase
        return count
    }
}
