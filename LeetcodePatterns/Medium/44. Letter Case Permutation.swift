//
//  44. Letter Case Permutation.swift
//  LeetcodePatterns
//
//  Created by Anton Novoselov on 02.10.2021.
//

import Foundation

// 784. Letter Case Permutation
// https://leetcode.com/problems/letter-case-permutation/

class Solution784 {
    func letterCasePermutation(_ s: String) -> [String] {
        var result = [String]()
        self.traverse(&result, "", s, 0)
        return result
    }
    
    func traverse(_ resultArr: inout [String],
                  _ currentStr: String,
                  _ inputStr: String,
                  _ index: Int) {
        if currentStr.count == inputStr.count {
            resultArr.append(currentStr)
            return
        }
        
        let char = Array(inputStr)[index]
        
        self.traverse(&resultArr, currentStr + String(char), inputStr, index + 1)
        
        if char.isLetter {
            var swappedCaseLetter = ""
            if char.isLowercase {
                swappedCaseLetter = char.uppercased()
            } else {
                swappedCaseLetter = char.lowercased()
            }
            self.traverse(&resultArr, currentStr + swappedCaseLetter, inputStr, index + 1)
        }
    }
}
