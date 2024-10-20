// You have a set which contains all positive integers [1, 2, 3, 4, 5, ...].

// Implement the SmallestInfiniteSet class:

// SmallestInfiniteSet() Initializes the SmallestInfiniteSet object to contain all positive integers.
// int popSmallest() Removes and returns the smallest integer contained in the infinite set.
// void addBack(int num) Adds a positive integer num back into the infinite set, if it is not already in the infinite set.
class SmallestInfiniteSet {
    var x = Set<Int>(1...1000)
    
    
    func popSmallest() -> Int {
        var z = x.sorted()
        var y = z.removeFirst()
        x = Set(z)
        return y
    }
    
    func addBack(_ num: Int) {
        x.insert(num)
    }
}

/**
 * Your SmallestInfiniteSet object will be instantiated and called as such:
 * let obj = SmallestInfiniteSet()
 * let ret_1: Int = obj.popSmallest()
 * obj.addBack(num)
 */
