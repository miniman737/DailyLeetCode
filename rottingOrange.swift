// You are given an m x n grid where each cell can have one of three values:

// 0 representing an empty cell,
// 1 representing a fresh orange, or
// 2 representing a rotten orange.
// Every minute, any fresh orange that is 4-directionally adjacent to a rotten orange becomes rotten.

// Return the minimum number of minutes that must elapse until no cell has a fresh orange. If this is impossible, return -1.



class Solution {
    func orangesRotting(_ grid: [[Int]]) -> Int {
        var myGrid = grid
        var x:[(Int, Int)] = []
        var time = 0
        var fresh = 0
        var rowCount = myGrid.count
        var columnCount = myGrid.first?.count ?? 0
        for (i, row) in grid.enumerated() {
            for (j, col) in row.enumerated() {
                if myGrid[i][j] == 1 {
                    fresh += 1
                } 
                if myGrid[i][j] == 2 {
                    x.append((i, j))
                } 
            }
        }

       let direction = [(0,1),(0,-1),(1,0),(-1,0)]

       while x.count > 0 && fresh > 0 {
            for y in 0..<x.count {
                var pos = x.removeFirst()
                var posRow = pos.0
                var posCol = pos.1
                for dir in direction {
                    var posX = dir.0 + posRow
                    var posY = dir.1 + posCol
                    var rowBool = (posX < 0 || posX == rowCount)
                    var colBool = (posY < 0 || posY == columnCount)
                    if(rowBool || colBool || myGrid[posX][posY] != 1) {
                        continue
                    }
                    myGrid[posX][posY] = 2
                    x.append((posX, posY))
                    fresh = fresh - 1
                }
            }
            time = time + 1
        }
        guard fresh == 0 else {return -1}
        return time
    }
}
