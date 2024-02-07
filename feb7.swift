// beats 98.25% of swift solutions
class Solution {
    func frequencySort(_ s: String) -> String {
        var letterCounts = [Character: Int]()

        for char in s{
            if let count = letterCounts[char] {
                letterCounts[char] = count + 1
            } else {
                letterCounts[char] = 1
            }
        }
        let sortedArray = letterCounts.sorted { $0.value > $1.value }

        // Create a new dictionary from the sorted array
        let sortedDic = Dictionary(uniqueKeysWithValues: sortedArray)

        // print(sortedDic)
        let finalOutput = sortedArray.flatMap { Array(repeating: $0.key, count: $0.value) }
        return String(finalOutput)
        

    }
}
