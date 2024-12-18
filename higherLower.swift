// We are playing the Guess Game. The game is as follows:

// I pick a number from 1 to n. You have to guess which number I picked.

// Every time you guess wrong, I will tell you whether the number I picked is higher or lower than your guess.

// You call a pre-defined API int guess(int num), which returns three possible results:

// -1: Your guess is higher than the number I picked (i.e. num > pick).
// 1: Your guess is lower than the number I picked (i.e. num < pick).
// 0: your guess is equal to the number I picked (i.e. num == pick).
// Return the number that I picked.
/** 
 * Forward declaration of guess API.
 * @param  num -> your guess number
 * @return 	     -1 if num is higher than the picked number
 *			      1 if num is lower than the picked number
 *               otherwise return 0 
 * func guess(_ num: Int) -> Int 
 */

class Solution : GuessGame {
    func guessNumber(_ n: Int) -> Int {
        var low = 1
        var high = n
        var pick = Int(floor(Double(1 + n)) / Double(2))
        var found: Bool = false

        while found == false {
            var check = guess(pick)
            if check == 0 {
                found = true
                return pick 
            } else if check == 1 {
                low = pick + 1
                pick = Int(floor(Double(low + high)) / Double(2))
            } else if check == -1 {
                high = pick - 1
                pick = Int(floor(Double(low + high)) / Double(2))
            }
        }
    }
}
