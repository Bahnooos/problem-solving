class Solution {
  int search(List<int> nums, int target) {
    int left = 0;
    int right = nums.length - 1;

    // [-1,0,3,5,9,12]
    while (left <= right) {
      int mid = (right + left) ~/ 2;
      if (nums[mid] == target) {
        return mid;
      }
      if (nums[mid] < target) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }

    return -1;
  }
}
