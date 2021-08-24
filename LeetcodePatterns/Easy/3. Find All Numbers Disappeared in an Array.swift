//
//  3. Find All Numbers Disappeared in an Array.swift
//  3. Find All Numbers Disappeared in an Array
//
//  Created by Anton Novoselov on 11.08.2021.
//

import Foundation

// Leetcode: 448. Find All Numbers Disappeared in an Array
// https://leetcode.com/problems/find-all-numbers-disappeared-in-an-array/

class Solution448 {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        var missingElements: [Int] = []
        var index = 0
        var nums = nums
        while index < nums.count {
            let correctPosition = nums[index] - 1
            if nums[index] != nums[correctPosition] {
                nums.swapAt(index, correctPosition)
            } else {
                index += 1
            }
        }
        
        for index in 0 ..< nums.count {
            if nums[index] != index + 1 {
                missingElements.append(index + 1)
            }
        }
        
        return missingElements
    }
}
