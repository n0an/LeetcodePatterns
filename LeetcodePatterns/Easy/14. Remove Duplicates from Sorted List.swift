//
//  14. Remove Duplicates from Sorted List.swift
//  14. Remove Duplicates from Sorted List
//
//  Created by Anton Novoselov on 15.08.2021.
//

import Foundation

// 83. Remove Duplicates from Sorted List
// https://leetcode.com/problems/remove-duplicates-from-sorted-list/

class Solution83 {
    public class ListNode {
        public var val: Int
        public var next: ListNode?
        public init() { self.val = 0; self.next = nil; }
        public init(_ val: Int) { self.val = val; self.next = nil; }
        public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
    }
    
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        
        if head == nil {
            return nil
        }
        
        var node = head
        let newHead = node
        
        while node?.next != nil {
            if node?.next?.val == node?.val {
                node?.next = node?.next?.next
            } else {
                node = node?.next
            }
        }
        
        return newHead
    }
}
