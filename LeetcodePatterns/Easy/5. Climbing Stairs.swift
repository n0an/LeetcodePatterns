//
//  5. Climbing Stairs.swift
//  5. Climbing Stairs
//
//  Created by Anton Novoselov on 12.08.2021.
//

import Foundation

// Leetcode: 70. Climbing Stairs
// https://leetcode.com/problems/climbing-stairs/

class Solution70 {
    func climbStairs(_ n: Int) -> Int {
        if n == 1 {
            return 1
        }
        
        var n1 = 1
        var n2 = 2
        
        for _ in 3 ..< n + 1 {
            let previousN1 = n1
            n1 = n2
            n2 = n2 + previousN1
        }
        
        return n2
    }
}
