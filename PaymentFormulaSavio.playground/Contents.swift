//: Playground - noun: a place where people can play

import UIKit

var arr2 = ["impluse","impluse","impluse","impluse","sub","impluse","impluse","sub","impluse","impluse","impluse","impluse","sub"]

var SubArray = [[1, 2, 3, 4, 5], [6, 7, 8, 9, 10], [11, 12]]
print(SubArray[0])

var my2Darr : [[Int]] = []
var row = 0
var colume = 0
var newValue = 29

let array = ["23.88", "24"]



//for str in arr {
//    if str == "sub"{
//        my2Darr[row][colume] = newValue as Int
//        print("success")
//    }else{print("fail")}
//}

// An empty 2D string array.
var codes = [[String]]()

// Create first string array.
// ... Append it to the codes 2D array.
var row1 = [String]()
row1.append("C1")
row1.append("A1")

codes.append(row1)

// Create the second string array row.
var row2 = [String]()
row2.append("T2")
row2.append("S2")

codes.append(row2)

// Display our 2D string array.
print(codes)


let arr = [1, 2, 3, 4, 5, 6, 7, 5, 9, 10, 11, 12]

extension Array {
    
    func chunk(_ chunkSize: Int) -> [[Element]] {
        return stride(from: 0, to: self.count, by: chunkSize).map({ (startIndex) -> [Element] in
            let endIndex = (startIndex.advanced(by: chunkSize) > self.count) ? self.count-startIndex : chunkSize
            return Array(self[startIndex..<startIndex.advanced(by: endIndex)])
        })
    }
}

let slitint = arr.chunk(5)
print(slitint)
let splitval = arr2.split(separator: "sub")
print(splitval)


let arr1 = [1.0,2.0,3.0,6.0,8.0,10.0]
let arr3 = [3]

//let array3 = zip(arr1, arr3).map(+)
//print(array3)

var xAxisLabels: Array<CGFloat> = [1.0,2.0,3.0,6.0,8.0,10.0]


var finalarray = [Int]()
for i in 0 ..< xAxisLabels.count {
    let lastobj = xAxisLabels.index(of: xAxisLabels.last! - 1)
    if i == xAxisLabels.count - 1 {
//        let sure = lastobj! + 10
//        print(sure)
//        finalarray.append(sure)
    }else{
        finalarray.append(Int(xAxisLabels[i]))
    }
}

print(finalarray)
