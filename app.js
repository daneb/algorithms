require('./mergesort.js')();

var array = [14, 7, 3, 12, 9, 11, 6, 2];
mergeSort(array, 0, array.length - 1);
println("Array after sorting: " + array);
array === [2, 3, 6, 7, 9, 11, 12, 14];