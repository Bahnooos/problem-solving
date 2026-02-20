import 'dart:math';

class Solution {
  int maxSubArray(List<int> nums) {
    int l = 0;
    int sum = 0;
    int cur_sum = 0;
    //[-2,1,-3,4,-1,2,1,-5,4]
    for (var r = 0; r < nums.length; r++) {
      if (r == 0) {
        cur_sum = nums[r];
      }
      if (nums[r]>nums[l] && nums[r]>sum) {
        
      }
      sum += nums[r];
      cur_sum = max(cur_sum, sum);
    }
    return 1;
  }
}
