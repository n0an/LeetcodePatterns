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
        
        let leftDepth = maxDepth(node.left)
        let rightDepth = maxDepth(node.right)
        return max(leftDepth, rightDepth) + 1
    }
}
