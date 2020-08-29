import Foundation

//Special thanks to Thomas Hanning
 
class MergeSort{
    
    func sortArray(_ nums: [Int]) -> [Int] {
        
        if(nums.count == 1) {return nums}
        
        let left = Array(nums[0 ..< nums.count/2])
        let right = Array(nums[nums.count/2 ..< nums.count])
        
        return mergeSort(left: sortArray(left), right: sortArray(right))
        
    }
    
    func mergeSort(left: [Int], right: [Int]) -> [Int]{
        var merged: [Int] = []
        var left = left
        var right = right
        
        while left.count > 0 && right.count > 0 {
            if left.first! < right.first! {
                merged.append(left.removeFirst())
            } else {
                merged.append(right.removeFirst())
            }
        }
     
        return merged + left + right
    }
    
    func testMergeSort() -> String{
        if mergeSort(left: [1], right: [-1]) == [-1, 1]{
            return "mergeSort: Test Passed"
        }else{
            return "mergeSort: Test Failed"
        }
    }
    func testSortArray() -> String{
        if sortArray([-1, -1, 0, 0, 1, 2, 3, 10, 500]) == [-1, -1, 0, 0, 1, 2, 3, 10, 500]{
            return "sortArray: Test Passed"
        } else{
            return "sortArray: Test Failed"
        }
    }
}

print(MergeSort().testMergeSort())
print(MergeSort().testSortArray())
