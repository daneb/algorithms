#var insert = function(array, rightIndex, value) {
#    var i = 0;
#    for(i = rightIndex; (value > array[i] && i > 0); i--) {
#        array[i + 1] = array[i];
#    }
#    array[i] = value;
#};
#
#var array = [3, 5, 7, 11, 13, 2, 9, 6];
#
#insert(array, 4, 2);
#println("Array after inserting 2:  " + array);
#Program.assertEqual(array, [2, 3, 5, 7, 11, 13, 9, 6]);
#
#insert(array, 5, 9);
#println("Array after inserting 9:  " + array);
#Program.assertEqual(array, [2, 3, 5, 7, 9, 11, 13, 6]);
#
#insert(array, 6, 6);
#println("Array after inserting 6:  " + array);
#//Program.assertEqual(array, [2, 3, 5, 6, 7, 9, 11, 13]);
