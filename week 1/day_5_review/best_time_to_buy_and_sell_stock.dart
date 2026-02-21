import 'dart:math';

class Solution {
  int maxProfit(List<int> prices) {
    int left = 0;
    int profit = 0;
    for (var i = 1; i < prices.length ; i++) {
      if (prices[i] < prices[left] ) {
        left= i;
      }
      
      profit = max(profit, prices[i] - prices[left] );
    }
    return profit;
  }
}
