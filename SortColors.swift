class Solution {
    func sortColors(_ nums: inout [Int]) {
        var one :[Int] = []
        var two :[Int] = []
        var three :[Int] = []
        for x in nums {
            if x == 0 {
                one.append(x)
            }else if x == 1 {
                two.append(x)
            }else{
                three.append(x)
            }
        }
        nums = one + two + three
    }
}
