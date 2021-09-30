//
//  41. Rotate Image.swift
//  LeetcodePatterns
//
//  Created by Anton Novoselov on 30.09.2021.
//

import Foundation

// 48. Rotate Image
// https://leetcode.com/problems/rotate-image/

class Solution48 {
    func rotate(_ matrix: inout [[Int]]) {
        guard matrix.count > 1 && matrix.count == matrix[0].count else { return }
        self.transpose(&matrix)
        self.reflect(&matrix)
    }
    
    func transpose(_ matrix: inout [[Int]]) {
        for i in 0 ..< matrix.count {
            for j in i ..< matrix.count {
                let tmp = matrix[i][j]
                matrix[i][j] = matrix[j][i]
                matrix[j][i] = tmp
            }
        }
    }
    
    func reflect(_ matrix: inout [[Int]]) {
        for i in 0 ..< matrix.count {
            for j in 0 ..< matrix.count / 2 {
                let tmp = matrix[i][j]
                matrix[i][j] = matrix[i][matrix.count - 1 - j]
                matrix[i][matrix.count - 1 - j] = tmp
            }
        }
    }
}
