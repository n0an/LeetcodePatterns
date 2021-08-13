//
//  10. Linked List Cycle.swift
//  10. Linked List Cycle
//
//  Created by Anton Novoselov on 13.08.2021.
//

import Foundation

// 141. Linked List Cycle
// https://leetcode.com/problems/linked-list-cycle/

class Solution141 {
    public class ListNode {
        public var val: Int
        public var next: ListNode?
        public init(_ val: Int) {
            self.val = val
            self.next = nil
        }
    }

    func hasCycle(_ head: ListNode?) -> Bool {
        guard let head = head, head.next != nil else { return false }

        var slow = head
        var fast = head

        while fast.next != nil && fast.next?.next != nil {
            fast = (fast.next?.next)!
            slow = slow.next!

            if fast.val == slow.val {
                return true
            }
        }
        return false
    }
}



