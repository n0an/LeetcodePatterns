//
//  15. Reverse Linked List.swift
//  15. Reverse Linked List
//
//  Created by Anton Novoselov on 14.08.2021.
//

import Foundation

// 206. Reverse Linked List
// https://leetcode.com/problems/reverse-linked-list/

class Solution206 {
    public class ListNode {
        public var val: Int
        public var next: ListNode?
        public init() { self.val = 0; self.next = nil; }
        public init(_ val: Int) { self.val = val; self.next = nil; }
        public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
    }
    
    func reverseList(_ head: ListNode?) -> ListNode? {
        
        var previous: ListNode? = nil
        var current: ListNode? = head
        
        while current != nil {
            let nextTmp = current?.next
            current?.next = previous
            previous = current
            current = nextTmp
        }
        
        return previous
    }
}
