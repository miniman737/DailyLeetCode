// There are n kids with candies. You are given an integer array candies, where each candies[i] represents the number of candies the ith kid has, and an integer extraCandies, denoting the number of extra candies that you have.

// Return a boolean array result of length n, where result[i] is true if, after giving the ith kid all the extraCandies, they will have the greatest number of candies among all the kids, or false otherwise.

// Note that multiple kids can have the greatest number of candies.

class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        var bools: [Bool] = []
        candies.forEach {
            var x = ($0 + extraCandies)
            guard let y = candies.max() else { return }
            x >= y ? bools.append(true) : bools.append(false)
        }
        return bools
    }
}
