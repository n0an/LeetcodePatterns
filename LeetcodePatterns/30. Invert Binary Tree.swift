//
//  30. Invert Binary Tree.swift
//  30. Invert Binary Tree
//
//  Created by Anton Novoselov on 22.08.2021.
//

import Foundation

// 226. Invert Binary Tree
// https://leetcode.com/problems/invert-binary-tree/

class Solution226 {
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        
        guard let node = root else { return nil }
                
        var tmp = node.left
        node.left = node.right
        node.right = tmp
        
        if node.left == nil && node.right == nil {
            return node
        }
        
        invertTree(node.left)
        invertTree(node.right)
        
        return root
    }
}
