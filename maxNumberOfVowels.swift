// 1456. Maximum Number of Vowels in a Substring of Given Length
// Solved
// Medium

// Topics
// Companies

// Hint
// Given a string s and an integer k, return the maximum number of vowel letters in any substring of s with length k.

// Vowel letters in English are 'a', 'e', 'i', 'o', and 'u'.

 

// Example 1:

// Input: s = "abciiidef", k = 3
// Output: 3
// Explanation: The substring "iii" contains 3 vowel letters.
// Example 2:

// Input: s = "aeiou", k = 2
// Output: 2
// Explanation: Any substring of length 2 contains 2 vowels.
// Example 3:

// Input: s = "leetcode", k = 3
// Output: 2
// Explanation: "lee", "eet" and "ode" contain 2 vowels.
 

// Constraints:

// 1 <= s.length <= 105
// s consists of lowercase English letters.
// 1 <= k <= s.length

class Solution {
    func maxVowels(_ s: String, _ k: Int) -> Int {
        let vowels = Set("aeiou")
        let array = Array(s)
        var mostVowels = 0
        var currVowels = 0
        for x in 0..<s.count {
            if vowels.contains(array[x]) {
                currVowels += 1
            }
            let j = x - k
            if j >= 0 {
                if vowels.contains(array[j]) {
                    currVowels -= 1
                }
            }
            mostVowels = max(mostVowels, currVowels)
        }
        return mostVowels
    }
}
