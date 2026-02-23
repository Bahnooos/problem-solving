import 'dart:math';

class Solution {
  int characterReplacement(String s, int k) {
    int left = 0;
    Map<String, dynamic> count = {};
    int maxFreq = 0;
    int result = 0;

// Input: s = "A A B A B B A",
//            "0 1 2 3 4 5 6 
// k = 1
// Output: 4
    for (var right = 0; right < s.length; right++) {
      
      count[s[right]] = (count[s[right]] ?? 0) + 1;
      maxFreq = max(maxFreq, count[s[right]]);
      while (((right - left) + 1) - maxFreq > k) {
        count[s[left]] = count[s[left]] - 1;
        left++;
      }
      result = max(result, ((right - left) + 1)); //1,2,3,4,4,4
    }

    return result;
  }
}
