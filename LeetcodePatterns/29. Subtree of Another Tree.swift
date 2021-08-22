//
//  29. Subtree of Another Tree.swift
//  29. Subtree of Another Tree
//
//  Created by Anton Novoselov on 22.08.2021.
//

import Foundation

// 572. Subtree of Another Tree
// https://leetcode.com/problems/subtree-of-another-tree/

class Solution572 {
    func isSubtree(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
        if root == nil { return false }
        return isEqual(root, subRoot) || isSubtree(root?.left, subRoot) || isSubtree(root?.right, subRoot)
    }
    
    func isEqual(_ s: TreeNode?, _ t: TreeNode?) -> Bool {
        if s == nil && t == nil { return true }
        guard let s = s, let t = t, s.val == t.val else { return false }
        return isEqual(s.left, t.left) && isEqual(s.right, t.right)
    }
}
