//
//  8. Range Sum Query - Immutable.swift
//  8. Range Sum Query - Immutable
//
//  Created by Anton Novoselov on 13.08.2021.
//

import Foundation

// 303. Range Sum Query - Immutable
// https://leetcode.com/problems/range-sum-query-immutable/

class NumArray {
    
    var sums: [Int]

    init(_ nums: [Int]) {
        var sums = [Int]()
        var currentSum = 0
        for num in nums {
            currentSum += num
            sums.append(currentSum)
        }
        self.sums = sums
    }
    
    func sumRange(_ left: Int, _ right: Int) -> Int {
        if left == 0 {
            return self.sums[right]
        }
        return self.sums[right] - self.sums[left - 1]
    }
}

/**
 * Your NumArray object will be instantiated and called as such:
 * let obj = NumArray(nums)
 * let ret_1: Int = obj.sumRange(left, right)
 */
