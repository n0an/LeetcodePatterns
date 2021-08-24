//
//  16. Merge Two Sorted Lists.swift
//  16. Merge Two Sorted Lists
//
//  Created by Anton Novoselov on 16.08.2021.
//

import Foundation

// 21. Merge Two Sorted Lists
// https://leetcode.com/problems/merge-two-sorted-lists/

class Solution {
    public class ListNode {
        public var val: Int
        public var next: ListNode?
        public init() { self.val = 0; self.next = nil; }
        public init(_ val: Int) { self.val = val; self.next = nil; }
        public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
    }
    
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        guard l1 != nil else { return l2 }
        guard l2 != nil else { return l1 }
        
        var firstPointer = l1
        var secondPointer = l2
        
        let newFakeHead: ListNode? = ListNode()
        var current = newFakeHead
        
        while firstPointer != nil && secondPointer != nil {
            if firstPointer!.val < secondPointer!.val {
                current?.next = firstPointer
                firstPointer = firstPointer?.next
            } else {
                current?.next = secondPointer
                secondPointer = secondPointer?.next
            }
            
            current = current?.next
        }
        
        while firstPointer != nil {
            current?.next = firstPointer
            firstPointer = firstPointer?.next
            current = current?.next
        }
        
        while secondPointer != nil {
            current?.next = secondPointer
            secondPointer = secondPointer?.next
            current = current?.next
        }
        
        return newFakeHead?.next
    }
}
