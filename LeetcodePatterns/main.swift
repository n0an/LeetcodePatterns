//
//  main.swift
//  LeetcodePatterns
//
//  Created by Anton Novoselov on 11.08.2021.
//

import Foundation

let s = Solution920()

var intervals = [(0,30),(5,10),(15,20)].map { Interval(start: $0.0, end: $0.1) }
print(s.canAttendMeetings(intervals: intervals))
print("---")

intervals = [(5,8),(9,15)].map { Interval(start: $0.0, end: $0.1) }
print(s.canAttendMeetings(intervals: intervals))
print("---")

intervals = [(465,497),(386,462),(354,380),(134,189),(199,282),(18,104),(499,562),(4,14),(111,129),(292,345)].map { Interval(start: $0.0, end: $0.1) }
print(s.canAttendMeetings(intervals: intervals))
print("---")

