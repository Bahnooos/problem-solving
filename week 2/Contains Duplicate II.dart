class Solution {
  bool containsNearbyDuplicate(List<int> nums, int k) {
    Set<int> window = {};
    for (var i = 0; i < nums.length; i++) {
      if (window.contains(nums[i])) return true;
      window.add(i);
      if (window.length > k) {
        window.remove(nums[i - k]);
      }
    }
    return false;
  }
}
