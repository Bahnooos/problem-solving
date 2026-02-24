class Solution {
  List<int> nextGreaterElement(List<int> nums1, List<int> nums2) {
   
    List<int> stack = [];
    Map<int, int> map = {};

//nums1 = [4,1,2], nums2 = [1,3,4,2]

    for (var item in nums2) {
      while (stack.isNotEmpty && item > stack.last) {
        map[stack.removeLast()] = item;
      }
      stack.add(item);
    }
    while (stack.isNotEmpty) {
      map[stack.removeLast()] = -1;
    }

    return nums1.map((e) => map[e]!).toList();
  }
}
