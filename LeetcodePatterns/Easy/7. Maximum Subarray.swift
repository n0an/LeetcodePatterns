//
//  7. Maximum Subarray.swift
//  7. Maximum Subarray
//
//  Created by Anton Novoselov on 12.08.2021.
//

import Foundation

// 53. Maximum Subarray
// https://leetcode.com/problems/maximum-subarray/

class Solution53 {
    func maxSubArray(_ nums: [Int]) -> Int {
        
        var resultSum = nums[0]
        var currentSum = nums[0]
        
        for i in 1 ..< nums.count {
            let num = nums[i]
            
            currentSum = max(num, currentSum + num)
            resultSum = max(currentSum, resultSum)
        }
        
        return resultSum
    }
}
