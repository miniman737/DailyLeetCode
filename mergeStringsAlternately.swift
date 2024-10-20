// You are given two strings word1 and word2. Merge the strings by adding letters in alternating order, starting with word1. If a string is longer than the other, append the additional letters onto the end of the merged string.

// Return the merged string.

 

// Example 1:

// Input: word1 = "abc", word2 = "pqr"
// Output: "apbqcr"
// Explanation: The merged string will be merged as so:
// word1:  a   b   c
// word2:    p   q   r
// merged: a p b q c r

class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
       var count = word1.count + word2.count
       var word4 = word1
       var word5 = word2
       var word3 = ""
       for i in 0...count {
        if word4 != "" {
            var temp1 = word4.removeFirst()
            word3.append(temp1)
        }
        if word5 != "" {
            var temp2 = word5.removeFirst()
            word3.append(temp2)
        }
       }
       return word3
    }
}
