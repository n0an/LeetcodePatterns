//
//  18. Binary Search.swift
//  18. Binary Search
//
//  Created by Anton Novoselov on 16.08.2021.
//

import Foundation

// 704. Binary Search
// https://leetcode.com/problems/binary-search/

class Solution704 {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        
        while left <= right {
            let currentMiddleIndex = left + (right - left) / 2
            
            if nums[currentMiddleIndex] == target {
                return currentMiddleIndex
            } else if nums[currentMiddleIndex] > target {
                right = currentMiddleIndex - 1
            } else {
                left = currentMiddleIndex + 1
            }
        }
        
        return -1
    }
}
