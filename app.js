/* global println */
/* global mergeSort */
//require('./mergesort.js')();
require('./breadth-first.js')();

// var array = [14, 7, 3, 12, 9, 11, 6, 2];
// mergeSort(array, 0, array.length - 1);
// println("Array after sorting: " + array);
// array === [2, 3, 6, 7, 9, 11, 12, 14];

// var array = [9, 7, 5, 11, 12, 2, 14, 3, 10, 4, 6];
// var q = partition(array, 0, array.length-1);
// console.log("Array after partitioning: " + array);
// Program.assertEqual(q, 4);
// Program.assertEqual(array, [5, 2, 3, 4, 6, 7, 14, 9, 10, 11, 12]);

// var test_array = [9, -7, 5, 11, 12, 2, 14, 3, 10, 4, 6];
// var q = partition(test_array, 0, test_array.length-1);

var adjList = [
    [1],
    [0, 4, 5],
    [3, 4, 5],
    [2, 6],
    [1, 2],
    [1, 2, 6],
    [3, 5],
    []
    ];
var bfsInfo = doBFS(adjList, 3);
for (var i = 0; i < adjList.length; i++) {
    console.log("vertex " + i + ": distance = " + bfsInfo[i].distance + ", predecessor = " + bfsInfo[i].predecessor);
}