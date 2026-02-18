class Solution {
  List<int> intersection(List<int> nums1, List<int> nums2) {
    Set set = nums1.toSet();
    Set<int> result = {};

    for (var item in nums2) {
      if (set.contains(item)) {
        result.add(item);
      }
    }

    return result.toList();
  }
}
