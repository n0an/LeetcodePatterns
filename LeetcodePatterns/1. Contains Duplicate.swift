//
//  1. Contains Duplicate.swift
//  1. Contains Duplicate
//
//  Created by Anton Novoselov on 11.08.2021.
//

import Foundation

// Leetcode: 217. Contains Duplicate
// https://leetcode.com/problems/contains-duplicate/

class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        let set = Set(nums)
        return set.count != nums.count
    }
}
