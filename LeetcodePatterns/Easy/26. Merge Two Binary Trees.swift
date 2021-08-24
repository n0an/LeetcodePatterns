//
//  26. Merge Two Binary Trees.swift
//  26. Merge Two Binary Trees
//
//  Created by Anton Novoselov on 19.08.2021.
//

import Foundation

// 617. Merge Two Binary Trees
// https://leetcode.com/problems/merge-two-binary-trees/

class Solution617 {
    func mergeTrees(_ root1: TreeNode?, _ root2: TreeNode?) -> TreeNode? {
        
        if root1 == nil {
            return root2
        }
        
        if root2 == nil {
            return root1
        }
        
        root1!.val += root2!.val
        root1!.left = mergeTrees(root1!.left, root2!.left)
        root1!.right = mergeTrees(root1!.right, root2!.right)
        
        return root1
    }
}
