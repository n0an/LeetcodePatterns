//
//  13. Remove Linked List Elements.swift
//  13. Remove Linked List Elements
//
//  Created by Anton Novoselov on 15.08.2021.
//

import Foundation

// 203. Remove Linked List Elements
// https://leetcode.com/problems/remove-linked-list-elements/

class Solution203 {
    public class ListNode {
        public var val: Int
        public var next: ListNode?
        public init() { self.val = 0; self.next = nil; }
        public init(_ val: Int) { self.val = val; self.next = nil; }
        public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
    }
    
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        if head == nil {
            return nil
        }
        
        let newHead = ListNode()
        newHead.next = head
        
        var node = newHead
        
        while node.next != nil {
            if node.next?.val == val {
                node.next = node.next?.next
            } else {
                node = node.next!
            }
        }
        
        return newHead.next
    }
}
