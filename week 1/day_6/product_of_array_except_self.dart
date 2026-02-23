class Solution {
  List<int> productExceptSelf(List<int> nums) {
    List<int> result = List.filled(nums.length, 1);
    int prefix = 1;
    int suffix = 1;
    int n = nums.length ;
    for (var i = 0; i < n; i++) {
      result[i] = prefix;
      prefix*=nums[i];
    }
    for (var i = n-1; i >= 0; i--) {
     result[i] *= suffix;
      suffix*=nums[i];
    }

    return result;
  }
}
