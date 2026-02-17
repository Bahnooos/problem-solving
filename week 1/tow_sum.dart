class Solution {
  List<int> twoSum(List<int> nums, int target) {
    List<int> result = [];
    for (int item = 0; item < nums.length - 1; item++) {
      result.add(item);
      for (int i = item + 1; i <= nums.length - 1; i++) {
        if (nums[item] + nums[i] == target) {
          result.add(i);
          return result;
        }
      }
      result.clear();
    }
    return result;
  }
}
