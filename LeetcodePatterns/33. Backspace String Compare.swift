//
//  33. Backspace String Compare.swift
//  33. Backspace String Compare
//
//  Created by Anton Novoselov on 23.08.2021.
//

import Foundation

// 844. Backspace String Compare
// https://leetcode.com/problems/backspace-string-compare/

class Solution844 {
    func backspaceCompare(_ s: String, _ t: String) -> Bool {
        
        var stack1 = [Character]()
        var stack2 = [Character]()
        
        for letter in s {
            if letter == "#" {
                _ stack1.popLast()
            } else {
                stack1.append(letter)
            }
        }
        
        for letter in t {
            if letter == "#" {
                _ stack2.popLast()
            } else {
                stack2.append(letter)
            }
        }
        
        return stack1 == stack2
    }
}
