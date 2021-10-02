//
//  43. Longest Consecutive Sequence.swift
//  LeetcodePatterns
//
//  Created by Anton Novoselov on 02.10.2021.
//

import Foundation

// 128. Longest Consecutive Sequence
// https://leetcode.com/problems/longest-consecutive-sequence/

class Solution128 {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var countMap = [Int: Int]()
        var result = 0
        for num in nums {
            if countMap[num] == nil {
                var leftSum = countMap[num - 1] ?? 0
                var rightSum = countMap[num + 1] ?? 0
                var streak = leftSum + rightSum + 1
                
                countMap[num] = streak
                
                if leftSum != 0 {
                    countMap[num-leftSum] = streak
                }
                
                if rightSum != 0 {
                    countMap[num+rightSum] = streak
                }
                
                result = max(result, streak)
            }
        }
        return result
    }
}
