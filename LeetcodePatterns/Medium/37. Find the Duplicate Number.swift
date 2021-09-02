//
//  37. Find the Duplicate Number.swift
//  37. Find the Duplicate Number
//
//  Created by Anton Novoselov on 02.09.2021.
//

import Foundation

// 287. Find the Duplicate Number
// https://leetcode.com/problems/find-the-duplicate-number/

class Solution287 {
    func findDuplicate(_ nums: [Int]) -> Int {
        var slow = nums[0]
        var fast = nums[0]
        
        while true {
            slow = nums[slow]
            fast = nums[nums[fast]]
            if slow == fast {
                break
            }
        }
        
        slow = nums[0]
        while fast != slow {
            slow = nums[slow]
            fast = nums[fast]
        }
        
        return slow
    }
}


