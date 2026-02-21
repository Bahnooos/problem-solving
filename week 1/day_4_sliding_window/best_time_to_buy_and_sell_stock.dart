import 'dart:math';

class Solution {
  int maxProfit(List<int> prices) {
    int left = 0;
    int profit = 0;
    // left < right
    // max profit between left and i
    for (var right = 1; right < prices.length; right++) {
      if (prices[right] < prices[left]) {
        left = right;
      }
      profit = max(profit, prices[right]- prices[left]);
    }
    return profit;
  }
}
