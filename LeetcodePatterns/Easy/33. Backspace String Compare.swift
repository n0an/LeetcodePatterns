//
//  33. Backspace String Compare.swift
//  33. Backspace String Compare
//
//  Created by Anton Novoselov on 23.08.2021.
//

import Foundation

// 844. Backspace String Compare
// https://leetcode.com/problems/backspace-string-compare/

// O(n) time | O(n) space
//class Solution844 {
//    func backspaceCompare(_ s: String, _ t: String) -> Bool {
//
//        var stack1 = [Character]()
//        var stack2 = [Character]()
//
//        for letter in s {
//            if letter == "#" {
//                _ = stack1.popLast()
//            } else {
//                stack1.append(letter)
//            }
//        }
//
//        for letter in t {
//            if letter == "#" {
//                _ = stack2.popLast()
//            } else {
//                stack2.append(letter)
//            }
//        }
//
//        return stack1 == stack2
//    }
//}

// O(n) time | O(1) space
class Solution844 {
    func getCurrentIndex(_ str: String, _ index: Int) -> Int {
        var index = index
        var toSkip = 0
        while index >= 0 {
            if Array(str)[index] == "#" {
                toSkip += 1
            } else if toSkip > 0 {
                toSkip -= 1
            } else {
                break
            }
            
            index -= 1
        }
        return index
    }
    
    func backspaceCompare(_ s: String, _ t: String) -> Bool {
        var i = s.count - 1
        var j = t.count - 1
        
        while i >= 0 || j >= 0 {
            i = self.getCurrentIndex(s, i)
            j = self.getCurrentIndex(t, j)
            if i < 0 && j < 0 {
                return true
            }
            if i < 0 || j < 0 {
                return false
            }
            if Array(s)[i] != Array(t)[j] {
                return false
            }
            i -= 1
            j -= 1
        }
        return true
    }
}
