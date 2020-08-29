import Foundation

func insertSort(toSort: [Int]) -> [Int]{
    
    var result: [Int] = []
    result.append(toSort[0])
    
    for j in 1..<toSort.count{
        let key = toSort[j]
        result.insert(key, at: j)
        
        var i = j - 1
        
        while i >= 0 && result[i] > key{
            result[i + 1] = result[i]
            i -= 1
            result[i + 1] = key
        }
    }
    
    return result
}


func testToSort() -> String{
    let test = [0, 0, 3, 2, 1, -1, 500, -1, 10]
    if insertSort(toSort: test) == [-1, -1, 0, 0, 1, 2, 3, 10, 500]{
        return "Test Passed"
    } else{
        return "Test Failed"
    }
}

print(testToSort())

