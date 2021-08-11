//
//  2. Missing number.swift
//  2. Missing number
//
//  Created by Anton Novoselov on 11.08.2021.
//

import Foundation

// Leetcode: 268. Missing Number
// https://leetcode.com/problems/missing-number/

class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        let n = nums.count
        return n * (n+1) / 2 - nums.reduce(0, +)
    }
}
