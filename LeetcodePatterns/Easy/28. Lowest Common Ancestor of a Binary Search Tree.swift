//
//  28. Lowest Common Ancestor of a Binary Search Tree.swift
//  28. Lowest Common Ancestor of a Binary Search Tree
//
//  Created by Anton Novoselov on 21.08.2021.
//

import Foundation

// 235. Lowest Common Ancestor of a Binary Search Tree
// https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-search-tree/


class Solution235 {
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        var node = root
        
        while node != nil {
            if p!.val < node!.val && q!.val < node!.val {
                node = node!.left
            } else if p!.val > node!.val && q!.val > node!.val {
                node = node!.right
            } else {
                return node
            }
        }
        
        return nil
    }
}
