//
//  19. Find Smallest Letter Greater Than Target.swift
//  19. Find Smallest Letter Greater Than Target
//
//  Created by Anton Novoselov on 16.08.2021.
//

import Foundation

// 744. Find Smallest Letter Greater Than Target
// https://leetcode.com/problems/find-smallest-letter-greater-than-target/

class Solution744 {
    func nextGreatestLetter(_ letters: [Character], _ target: Character) -> Character {
        var left = 0
        var right = letters.count - 1
        
        while left <= right {
            var middle = left + (right - left) / 2
            
            if letters[middle] > target {
                right = middle - 1
            } else {
                left = middle + 1
            }
        }
        
        return letters[left % letters.count]
    }
}
