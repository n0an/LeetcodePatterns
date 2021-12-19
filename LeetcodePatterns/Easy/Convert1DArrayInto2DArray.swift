//
//  Convert1DArrayInto2DArray.swift
//  LeetcodePatterns
//
//  Created by Anton Novoselov on 19.12.2021.
//

import Foundation

// 2022. Convert 1D Array Into 2D Array
// https://leetcode.com/problems/convert-1d-array-into-2d-array/

class Solution2022 {
    func construct2DArray(_ original: [Int], _ m: Int, _ n: Int) -> [[Int]] {
        guard original.count == m * n else { return [] }
        
        var result = [[Int]]()
        var rowNumber = 0
        
        var row = [Int]()
        for (index, element) in original.enumerated() {
            
            row.append(element)
            
            if (index + 1).isMultiple(of: n) {
                result.append(row)
                row = [Int]()
            }
        }
        return result
    }
}
