//
//  31. Two Sum.swift
//  31. Two Sum
//
//  Created by Anton Novoselov on 23.08.2021.
//

import Foundation

// 1. Two Sum
// https://leetcode.com/problems/two-sum/

// O(n) time | O(n) space
class Solution1 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var numExist = [Int: Int]()
        
        for (index, num) in nums.enumerated() {
            
            let potentialMatch = target - num
            
            if let potentialMatchIndex = numExist[potentialMatch] {
                return [index, potentialMatchIndex]
            } else {
                numExist[num] = index
            }
        }
        return []
    }
}
