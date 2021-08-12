//
//  6. Best Time to Buy and Sell Stock.swift
//  6. Best Time to Buy and Sell Stock
//
//  Created by Anton Novoselov on 12.08.2021.
//

import Foundation

// 121. Best Time to Buy and Sell Stock
// https://leetcode.com/problems/best-time-to-buy-and-sell-stock/

class Solution121 {
    func maxProfit(_ prices: [Int]) -> Int {
        
        var minPrice = prices[0]
        var maxProfit = 0
        
        for index in 1 ..< prices.count {
            maxProfit = max(prices[index] - minPrice, maxProfit)
            minPrice = min(prices[index], minPrice)
        }
        
        return maxProfit
    }
}
