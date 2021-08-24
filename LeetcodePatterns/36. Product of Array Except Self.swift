//
//  36. Product of Array Except Self.swift
//  36. Product of Array Except Self
//
//  Created by Anton Novoselov on 24.08.2021.
//

import Foundation

// 238. Product of Array Except Self
// https://leetcode.com/problems/product-of-array-except-self/

class Solution238 {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var prod = 1
        var result = Array(repeating: 1, count: nums.count)
        
        for i in 0..<nums.count{
            result[i] = prod
            prod *= nums[i]
        }
        
        prod = 1
        for i in stride(from: nums.count - 1, to: -1, by: -1){
            result[i] *= prod
            prod *= nums[i]
        }
        return result
    }
}
