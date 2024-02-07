// find the first charater in a string that occurs only once
class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var letterCounts = [Character: Int]()

        for char in s {
            letterCounts[char, default: 0] += 1
        }   


        
        for char in s{
            if var check = letterCounts[char]{
                if check == 1{
                    if var i = s.firstIndex(of: char) {
                        var index: Int = s.distance(from: s.startIndex, to: i)
                        return index
                    }
                }
            }
        }
        return -1
    }
}
