//
//  20. Peak Index in a Mountain Array.swift
//  20. Peak Index in a Mountain Array
//
//  Created by Anton Novoselov on 16.08.2021.
//

import Foundation

// 852. Peak Index in a Mountain Array
// https://leetcode.com/problems/peak-index-in-a-mountain-array/

class Solution852 {
    func peakIndexInMountainArray(_ arr: [Int]) -> Int {
        var left = 0
        var right = arr.count - 1
        
        while left <= right {
            
            let middleIndex = left + (right - left) / 2
            
            if arr[middleIndex] < arr[middleIndex + 1] {
                left = middleIndex + 1
            } else {
                right = middleIndex - 1
            }
        }
        
        return left
    }
}
