//
//  38. Find All Duplicates in an Array.swift
//  38. Find All Duplicates in an Array
//
//  Created by Anton Novoselov on 02.09.2021.
//

import Foundation

// 442. Find All Duplicates in an Array
// https://leetcode.com/problems/find-all-duplicates-in-an-array/

class Solution442 {
    func findDuplicates(_ nums: [Int]) -> [Int] {
        var nums = nums
        var result = [Int]()
        
        for num in nums {
            if nums[abs(num) - 1] < 0 {
                result.append(abs(num))
            }
            nums[abs(num) - 1] *= -1
        }
        return result
    }
}


