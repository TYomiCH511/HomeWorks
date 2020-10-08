import UIKit

func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {


var countApples = 0
var countOranges = 0

for i in apples {
    let x = a + i
    
    if x >= s && x <= t {
        countApples += 1
    }
}

for i in oranges {
    let x = b + i
    
    if x >= s && x <= t {
        countOranges += 1
    }
}

print(countApples)
print(countOranges)
}
