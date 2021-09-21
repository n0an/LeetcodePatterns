//
//  39. Set Matrix Zeroes.swift
//  39. Set Matrix Zeroes
//
//  Created by Anton Novoselov on 21.09.2021.
//

import Foundation

// 73. Set Matrix Zeroes
// https://leetcode.com/problems/set-matrix-zeroes/

class Solution73 {
    func setZeroes(_ matrix: inout [[Int]]) {
        var zeroFirstRow = false
        var zeroFirstColumn = false
        
        for i in 0 ..< matrix.count {
            if matrix[i][0] == 0 {
                zeroFirstColumn = true
            }
        }
        
        for i in 0 ..< matrix[0].count {
            if matrix[0][i] == 0 {
                zeroFirstRow = true
            }
        }
        
        for i in 1 ..< matrix.count {
            for j in 1 ..< matrix[0].count {
                if matrix[i][j] == 0 {
                    matrix[0][j] = 0
                    matrix[i][0] = 0
                }
            }
        }
        
        for i in 1 ..< matrix.count {
            for j in 1 ..< matrix[0].count {
                if matrix[0][j] == 0 || matrix[i][0] == 0 {
                    matrix[i][j] = 0
                }
            }
        }
        
        if zeroFirstRow == true {
            for i in 0 ..< matrix[0].count {
                matrix[0][i] = 0
            }
        }
        
        if zeroFirstColumn == true {
            for i in 0 ..< matrix.count {
                matrix[i][0] = 0
            }
        }
    }
}
