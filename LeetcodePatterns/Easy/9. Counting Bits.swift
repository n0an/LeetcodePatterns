//
//  9. Counting Bits.swift
//  9. Counting Bits
//
//  Created by Anton Novoselov on 13.08.2021.
//

import Foundation

// 338. Counting Bits
// https://leetcode.com/problems/counting-bits/

class Solution338 {
    func countBits(_ n: Int) -> [Int] {
        var array = Array(repeating: 0, count: n+1)
        
        for i in 0 ..< n + 1 {
            array[i] = array[i >> 1] + i%2
        }
        
        return array
    }
}
