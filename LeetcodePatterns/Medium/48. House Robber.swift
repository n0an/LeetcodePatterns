//
//  48. House Robber.swift
//  LeetcodePatterns
//
//  Created by Anton Novoselov on 04.10.2021.
//

import Foundation

// 198. House Robber
// https://leetcode.com/problems/house-robber/

class Solution198 {
    func rob(_ nums: [Int]) -> Int {
        var arr = Array(repeating: 0, count: nums.count + 2)
        for i in 2 ..< nums.count + 2 {
            arr[i] = max(arr[i - 1], arr[i - 2] + nums[i - 2])
        }
        return arr.last!
    }
}
