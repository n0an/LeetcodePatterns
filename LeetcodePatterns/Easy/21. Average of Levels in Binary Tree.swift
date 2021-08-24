//
//  21. Average of Levels in Binary Tree.swift
//  21. Average of Levels in Binary Tree
//
//  Created by Anton Novoselov on 16.08.2021.
//

import Foundation

// 637. Average of Levels in Binary Tree
// https://leetcode.com/problems/average-of-levels-in-binary-tree/

class Solution637 {
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
    
    func averageOfLevels(_ root: TreeNode?) -> [Double] {
        guard let root = root else { return [0.0] }
        var queue = [root]
        var result = [Double]()
        
        while queue.isEmpty == false {
            let levelCount = queue.count
            var currentLevelSum = 0.0
            
            for _ in 0 ..< levelCount {
                let node = queue.removeFirst()
                currentLevelSum += Double(node.val)
                
                if node.left != nil {
                    queue.append(node.left!)
                }
                
                if node.right != nil {
                    queue.append(node.right!)
                }
            }
            
            result.append(currentLevelSum / Double(levelCount))
        }
        
        return result
    }
}
