class Solution {
  int search(List<int> nums, int target) {
    int left = 0;
    int right = nums.length - 1;
    int mid = (right + left) ~/ 2;
    // [-1,0,3,5,9,12]
    while (left <= right) {
      if (nums[mid] == target) {
        return mid;
      }
      if (nums[mid] < target) {
        left++;
        mid = (right + left) ~/ 2;
      } else {
        right--;
        mid = (right + left) ~/ 2;
      }
    }

    return -1;
  }
}
