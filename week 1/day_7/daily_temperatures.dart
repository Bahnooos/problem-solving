class Solution {
//   Input: temperatures = [73,74,75,71,69,72,76,73]
// Output: [1,1,4,2,1,1,0,0]
  List<int> dailyTemperatures(List<int> temperatures) {
    List<int> result = List.filled(temperatures.length, 0);
    List<int> stack = [];
   
    for (var i = 0; i < temperatures.length; i++) {
      while (stack.isNotEmpty && temperatures[i] > stack.last) {
         int prevIndex = stack.removeLast();
        result[prevIndex] = i - prevIndex;
        
      }
      stack.add(i);
    }
    return result;
  }
}
