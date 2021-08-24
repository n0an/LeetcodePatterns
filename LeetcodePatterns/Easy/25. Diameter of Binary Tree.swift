//
//  25. Diameter of Binary Tree.swift
//  25. Diameter of Binary Tree
//
//  Created by Anton Novoselov on 18.08.2021.
//

import Foundation

// 543. Diameter of Binary Tree
// https://leetcode.com/problems/diameter-of-binary-tree/

class Solution543 {
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        var maxPath = 0
        
        _ = longestPath(root, &maxPath)
        
        return maxPath
    }
    
    func longestPath(_ node: TreeNode?, _ maxPath: inout Int) -> Int {
        if node == nil {
            return 0
        }
        
        let leftPath = longestPath(node?.left, &maxPath)
        let rightPath = longestPath(node?.right, &maxPath)
        
        maxPath = max(maxPath, leftPath + rightPath)
        return max(leftPath, rightPath) + 1
    }
}
