# Re-implement in Ruby
# var swap = function(array, firstIndex, secondIndex) {
#    var temp = array[firstIndex];
#    array[firstIndex] = array[secondIndex];
#    array[secondIndex] = temp;
#};
#
#var indexOfMinimum = function(array, startIndex) {
#
#    var minValue = array[startIndex];
#    var minIndex = startIndex;
#
#    for(var i = minIndex + 1; i < array.length; i++) {
#        if(array[i] < minValue) {
#            minIndex = i;
#            minValue = array[i];
#        }
#    }
#    return minIndex;
#};
#
#var selectionSort = function(array) {
#    var index_of_smallest = 0;
#    for(var startindex = 0; startindex <= array.length - 1; startindex++)
#    {
#        index_of_smallest = indexOfMinimum(array, startindex);
#        swap(array, startindex, index_of_smallest);
#    }
#};
#
#var array = [22, 11, 99, 88, 9, 7, 42];
#selectionSort(array);
#println("Array after sorting:  " + array);
#Program.assertEqual(array, [7, 9, 11, 22, 42, 88, 99]);
#
#var array = [22, 11, 99, 88, 9, 7, 0];
#selectionSort(array);
#println("Array after sorting: " + array);
#Program.assertEqual(array, [0, 7, 9, 11, 22, 88, 99]);
