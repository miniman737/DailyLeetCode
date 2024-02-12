// beats 91.6% of submissions, Given an array nums of size n, return the majority element.
class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var numberCountDictionary = [Int: Int]()
        for number in nums {
            if let count = numberCountDictionary[number] {
                numberCountDictionary[number] = count + 1
            } else {
                numberCountDictionary[number] = 1
            }
        }
        let sortedByCount = numberCountDictionary.sorted { $0.value > $1.value }
        // print(sortedByCount.first?.key)
        // print(sortedDictionary)
        if let firstKey = sortedByCount.first?.key {
            return(firstKey)
        } else {
            return -1
        }
    }
}
