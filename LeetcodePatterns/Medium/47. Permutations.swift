//
//  47. Permutations.swift
//  LeetcodePatterns
//
//  Created by Anton Novoselov on 03.10.2021.
//

import Foundation

// 46. Permutations
// https://leetcode.com/problems/permutations/

class Solution46 {
    var result: [[Int]]!
    
    func permute(_ nums: [Int]) -> [[Int]] {
        self.result = []
        self.backtrack(0, nums)
        
        return self.result
    }
    
    func backtrack(_ current: Int, _ nums: [Int]) {
        var nums = nums
        if current == nums.count {
            self.result.append(nums)
            print(self.result)
            return
        }
        
        for i in current ..< nums.count {
            nums.swapAt(i, current)
            self.backtrack(current + 1, nums)
            nums.swapAt(i, current)
        }
    }
}
