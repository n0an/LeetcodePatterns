//
//  27. Maximum Depth of Binary Tree.swift
//  27. Maximum Depth of Binary Tree
//
//  Created by Anton Novoselov on 19.08.2021.
//

import Foundation

// 104. Maximum Depth of Binary Tree
// https://leetcode.com/problems/maximum-depth-of-binary-tree/

class Solution104 {
    func maxDepth(_ root: TreeNode?) -> Int {
        guard let node = root else { return 0 }
        var maxDepth = 0
        getMaxDepth(node, 0, &maxDepth)
        return maxDepth
    }
    
    func getMaxDepth(_ node: TreeNode?, _ depth: Int, _ maxDepth: inout Int) {
        
        guard let node = node else {
            return
        }
        
        if node.left == nil && node.right == nil {
            maxDepth = max(maxDepth, depth + 1)
        }
        
        getMaxDepth(node.left, depth + 1, &maxDepth)
        getMaxDepth(node.right, depth + 1, &maxDepth)
    }
}
