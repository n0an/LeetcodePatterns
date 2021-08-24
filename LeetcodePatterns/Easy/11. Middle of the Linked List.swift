//
//  11. Middle of the Linked List.swift
//  11. Middle of the Linked List
//
//  Created by Anton Novoselov on 13.08.2021.
//

import Foundation

// 876. Middle of the Linked List
// https://leetcode.com/problems/middle-of-the-linked-list/


class Solution876 {
    
    public class ListNode {
        public var val: Int
        public var next: ListNode?
        public init() { self.val = 0; self.next = nil; }
        public init(_ val: Int) { self.val = val; self.next = nil; }
        public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
    }
    
    func middleNode(_ head: ListNode?) -> ListNode? {
        if head == nil {
            return nil
        }
        
        var slow = head
        var fast = head
        
        while fast != nil && fast?.next != nil {
            slow = slow!.next
            fast = fast?.next?.next
        }
        
        return slow
    }
}
