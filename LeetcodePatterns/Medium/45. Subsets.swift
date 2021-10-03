//
//  45. Subsets.swift
//  LeetcodePatterns
//
//  Created by Anton Novoselov on 03.10.2021.
//

import Foundation

// 78. Subsets
//https://leetcode.com/problems/subsets/

class Solution78 {
    func subsets(_ nums: [Int]) -> [[Int]] {
        return nums.reduce([[]]){result, num in
              result + result.map{$0 + [num]}
        }
    }
}
