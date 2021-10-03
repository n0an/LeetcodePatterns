//
//  46. Subsets II.swift
//  LeetcodePatterns
//
//  Created by Anton Novoselov on 03.10.2021.
//

import Foundation

// 90. Subsets II
// https://leetcode.com/problems/subsets-ii/

class Solution90 {
    func subsetsWithDup(_ nums: [Int]) -> [[Int]] {
        var result = [[Int]]()
        result.append([])
        var count = result.count
        let nums = nums.sorted() // Simplifies skipping duplicates

        for (i, num) in nums.enumerated() {
            let start = (i > 0 && nums[i-1] == num) ? count : 0
            count = result.count
            for j in start ..< count {
                result.append( result[j] + [num] )
            }
        }
        return result
    }
}
