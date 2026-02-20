class Solution {
  int maxSubArray(List<int> nums) {
    int max_sum = nums[0]; // -1 , 1, 1 , 4  ,4 , 5 , 6 ,6 , 6
    int cur_sum = nums[0];
    //[-2,1,-3,4,-1,2,1,-5,4]

    for (var r = 1; r < nums.length; r++) {
      cur_sum += nums[r]; // -1 => 1=> -2 => 2 ,4 => 3 => 5 => 6 => 1 => 4
      if (nums[r] > cur_sum) {
        cur_sum = nums[r];
      }
      if (cur_sum > max_sum) {
        max_sum = cur_sum;
      }
    }
    return max_sum;
  }
}
