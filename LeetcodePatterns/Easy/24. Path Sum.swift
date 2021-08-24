//
//  24. Path Sum.swift
//  24. Path Sum
//
//  Created by Anton Novoselov on 17.08.2021.
//

// 112. Path Sum
// https://leetcode.com/problems/path-sum/

import Foundation

class Solution112 {
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
    
    // DFS Recursive
    //    func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
    //        guard let root = root else {
    //            return false
    //        }
    //
    //        if root.left == nil && root.right == nil {
    //            return root.val == targetSum
    //        }
    //
    //        return hasPathSum(root.left, targetSum - root.val) || hasPathSum(root.right, targetSum - root.val)
    //    }
    
    // DFS Iterative
//    func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
//        guard let root = root else {
//            return false
//        }
//
//        var stackNodes = [root]
//        var stackSums = [targetSum]
//
//        while !stackNodes.isEmpty {
//            let currentNode = stackNodes.removeFirst()
//            let sumPop = stackSums.removeFirst()
//
//            if currentNode.left == nil && currentNode.right == nil && currentNode.val == sumPop {
//                return true
//            }
//
//            if let leftNode = currentNode.left {
//                stackNodes.insert(leftNode, at: 0)
//                stackSums.insert(sumPop - currentNode.val, at: 0)
//            }
//
//            if let rightNode = currentNode.right {
//                stackNodes.insert(rightNode, at: 0)
//                stackSums.insert(sumPop - currentNode.val, at: 0)
//            }
//        }
//        return false
//    }
    
    // BFS Iterative
    func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
        guard let root = root else {
            return false
        }
        
        var queueNodes = [root]
        var queueSums = [targetSum]
        
        while !queueNodes.isEmpty {
            let currentNode = queueNodes.removeFirst()
            let sumPop = queueSums.removeFirst()
            
            if currentNode.left == nil && currentNode.right == nil && currentNode.val == sumPop {
                return true
            }
            
            if let leftNode = currentNode.left {
                queueNodes.insert(leftNode, at: 0)
                queueSums.insert(sumPop - currentNode.val, at: 0)
            }
            
            if let rightNode = currentNode.right {
                queueNodes.insert(rightNode, at: 0)
                queueSums.insert(sumPop - currentNode.val, at: 0)
            }
        }
        return false
    }
}

