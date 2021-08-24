//
//  34. Majority Element.swift
//  34. Majority Element
//
//  Created by Anton Novoselov on 24.08.2021.
//

import Foundation

// 169. Majority Element
// https://leetcode.com/problems/majority-element/

class Solution169 {
    func majorityElement(_ nums: [Int]) -> Int {
        var countMap = [Int:Int]()
        for num in nums{
            countMap[num, default: 0] += 1
        }
        
        for key in countMap.keys{
            if let count = countMap[key], count > nums.count/2{
                return key
            }
        }
        
        return -1
    }
}
