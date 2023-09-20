// void main() {
//   List<int> nums = [1, 2, 3, 6, 8, 9, 10];
//   int count = 0;

//   for (int i = 0; i < nums.length; i++) {
//     for (int j = 0; j < nums.length; j++) {
//       if (i != j) {
//         for (int s = 0; s < nums.length; s++) {
//           if (i != s && j != s) {
//             for (int m = 0; m < nums.length; m++) {
//               if (nums[j] + nums[s] + nums[m] == nums[i] && m != j && m != i &&m!=s && m!=i) {
//                 count++;
//                 // Print the quadruplet
//                 print('${nums[j]}, ${nums[s]}, ${nums[m]}, ${nums[i]}');
//               }
//             }
//           }
//         }
//       }
//     }
//   }

//   print(count); // Output: number of quadruplets
// }

// void main() {
//   List<int> nums = [1, 2, 3, 6, 7, 8];
//   int count = 0;

//   for (int i = 0; i < nums.length; i++) {
//     for (int j = 0; j < nums.length; j++) {
//       if (i != j) {
//         for (int s = 0; s < nums.length; s++) {
//           if (i != s) {
//             for (int m = 0; m < nums.length; m++) {
//               if (nums[j] + nums[s] + nums[m] == nums[i] && m != j && m != i) {
//                 count++;
//               }
//             }
//           }
//         }
//       }
//     }
//   }

//   print(count); // Output: number of combinations that satisfy the condition
// }
