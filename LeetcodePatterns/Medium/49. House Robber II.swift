//
//  49. House Robber II.swift
//  LeetcodePatterns
//
//  Created by Anton Novoselov on 04.10.2021.
//

import Foundation

// 213. House Robber II
// https://leetcode.com/problems/house-robber-ii/

//class Solution213 {
//    func rob(_ nums: [Int]) -> Int {
//        guard nums.isEmpty == false else { return 0 }
//        let n = nums.count
//
//        if n == 1 { return nums[0] }
//        if n == 2 { return max(nums[0], nums[1]) }
//
//        return max(robHelper(Array(nums[0...n-2])), robHelper(Array(nums[1...n-1])))
//    }
//
//    func robHelper(_ nums: [Int]) -> Int {
//        var maxMoney = 0
//        var dp = Array(repeating: 0, count: nums.count)
//
//        dp[0] = nums[0]
//        dp[1] = max(nums[1], nums[0])
//
//        if nums.count == 2 { return dp[1] }
//
//        for i in 2..<nums.count {
//            dp[i] = max(dp[i-1], nums[i] + dp[i-2])
//            maxMoney = max(dp[i], maxMoney)
//        }
//
//        return maxMoney
//    }
//}
