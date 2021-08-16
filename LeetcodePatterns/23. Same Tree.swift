//
//  23. Same Tree.swift
//  23. Same Tree
//
//  Created by Anton Novoselov on 16.08.2021.
//

import Foundation

// 100. Same Tree
// https://leetcode.com/problems/same-tree/

class Solution100 {
    public class TreeNode {
        public var val: Int
        public var left: TreeNode?
        public var right: TreeNode?
        public init() { self.val = 0; self.left = nil; self.right = nil; }
        public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
        public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
            self.val = val
            self.left = left
            self.right = right
        }
    }
    
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        var p = p
        var q = q
        
        var queue = [p ,q]
        
        while queue.isEmpty == false {
            p = queue.removeFirst()
            q = queue.removeFirst()
            
            if p == nil && q == nil {
                continue
            }
            
            if p == nil || q == nil {
                return false
            }
            
            if p!.val != q!.val {
                return false
            }
            
            queue.append(p!.left)
            queue.append(q!.left)
            queue.append(p!.right)
            queue.append(q!.right)
        }
        return true
    }
}

