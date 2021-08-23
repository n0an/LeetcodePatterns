//
//  32. Squares of a Sorted Array.swift
//  32. Squares of a Sorted Array
//
//  Created by Anton Novoselov on 23.08.2021.
//

import Foundation

// 977. Squares of a Sorted Array
// https://leetcode.com/problems/squares-of-a-sorted-array/

class Solution977 {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var sortedSquares = Array(repeating: 0, count: nums.count)
        
        var leftPointer = 0
        var rightPointer = nums.count - 1
        
        for index in stride(from: nums.count - 1, through: 0, by: -1) {
            let small = nums[leftPointer]
            let large = nums[rightPointer]
            
            if abs(small) > abs(large) {
                sortedSquares[index] = small * small
                leftPointer += 1
            } else {
                sortedSquares[index] = large * large
                rightPointer -= 1
            }
        }
        
        return sortedSquares
    }
}


