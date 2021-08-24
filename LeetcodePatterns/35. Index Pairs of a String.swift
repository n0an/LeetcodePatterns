//
//  35. Index Pairs of a String.swift
//  35. Index Pairs of a String
//
//  Created by Anton Novoselov on 24.08.2021.
//

import Foundation

/*
 Given a text string and words (a list of strings), return all index pairs [i, j] so that the substring text[i]...text[j] is in the list of words.

 Example 1:
 Input: text = "thestoryofleetcodeandme", words = ["story","fleet","leetcode"]
 Output: [[3,7],[9,13],[10,17]]
 Example 2:

 Input: text = "ababa", words = ["aba","ab"]
 Output: [[0,1],[0,2],[2,3],[2,4]]
 Explanation:
 Notice that matches can overlap, see "aba" is found in [0,2] and [2,4].

 Note:
 All strings contains only lowercase English letters.
 It's guaranteed that all strings in words are different.
 1 <= text.length <= 100
 1 <= words.length <= 20
 1 <= words[i].length <= 50
 Return the pairs [i,j] in sorted order (i.e. sort them by their first coordinate in case of ties sort them by their second coordinate).
 Hints
 For each string of the set, look for matches and store those matches indices.
 
 */

// 1065. Index Pairs of a String
// https://leetcode.libaoj.in/index-pairs-of-a-string.html

class Solution1065 {
    func indexPairs(_ text: String, _ words: [String]) -> [[Int]] {
        var arr = Array(text)
        var words = words
        
        words.sort(by:{
            $0.count < $1.count
        })
        var res = [[Int]]()
        var begin = 0
        while(arr.count >= words[0].count) {
            let s = String(arr)
            for word in words {
                if s.hasPrefix(word) {
                    res.append([begin, begin + word.count - 1])
                }
            }
            arr.removeFirst()
            begin += 1
        }
        return res
    }
}
