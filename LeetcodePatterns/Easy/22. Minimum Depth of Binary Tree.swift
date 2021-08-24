//
//  22. Minimum Depth of Binary Tree.swift
//  22. Minimum Depth of Binary Tree
//
//  Created by Anton Novoselov on 16.08.2021.
//

import Foundation

// 111. Minimum Depth of Binary Tree
// https://leetcode.com/problems/minimum-depth-of-binary-tree/

class Solution111 {
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
    
    func minDepth(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        var queue = [root]
        var depth = 1
        
        while queue.isEmpty == false {
            for _ in 0 ..< queue.count {
                let node = queue.removeFirst()
                
                if node.left == nil && node.right == nil {
                    return depth
                }
                
                if node.left != nil {
                    queue.append(node.left!)
                }
                
                if node.right != nil {
                    queue.append(node.right!)
                }
            }
            
            depth += 1
        }
        return depth
    }
}
