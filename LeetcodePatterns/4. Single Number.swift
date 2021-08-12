//
//  4. Single Number.swift
//  4. Single Number
//
//  Created by Anton Novoselov on 12.08.2021.
//

import Foundation

// Leetcode: 136. Single Number
// https://leetcode.com/problems/single-number/

class Solution136 {
    func singleNumber(_ nums: [Int]) -> Int {
        var mask = 0
        
        for num in nums {
            mask ^= num
        }
        
        return mask
    }
}
