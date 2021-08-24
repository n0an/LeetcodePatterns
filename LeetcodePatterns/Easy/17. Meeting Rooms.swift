//
//  17. Meeting Rooms.swift
//  17. Meeting Rooms
//
//  Created by Anton Novoselov on 16.08.2021.
//

import Foundation

// https://leetcode.com/problems/meeting-rooms/
// https://www.lintcode.com/problem/920/

struct Interval {
    let start: Int
    let end: Int
}

class Solution920 {
    func canAttendMeetings(intervals: [Interval]) -> Bool {
        let sortedIntervals = intervals.sorted {
            $0.start < $1.start
        }
        
        for index in 0 ..< sortedIntervals.count - 1 {
            if sortedIntervals[index].end > sortedIntervals[index + 1].start {
                return false
            }
        }
        
        return true
    }
}
