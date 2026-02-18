class Solution {
  /// Big O(n)
  bool containsDuplicate(List<int> nums) {
    Set<int> setNums = Set.from(nums);
    if (setNums.length < nums.length) {
      return true;
    }
    return false;
  }
}
