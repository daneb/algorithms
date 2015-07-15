module.exports = function () {

    this.quickSort = function (array, p, r) {
        if (p < r) {
            var pivot = this.partition(array, p, r);
            quickSort(array, p, pivot - 1);
            quickSort(array, pivot + 1, r);
        }
    };


    // Swaps two items in an array, changing the original array
    this.swap = function (array, firstIndex, secondIndex) {
        var temp = array[firstIndex];
        array[firstIndex] = array[secondIndex];
        array[secondIndex] = temp;
    };

    this.partition = function (array, p, r) {
        // Compare array[j] with array[r], for j = p, p+1,...r-1
        // maintaining that:
        //  array[p..q-1] are values known to be <= to array[r]
        //  array[q..j-1] are values known to be > array[r]
        //  array[j..r-1] haven't been compared with array[r]
        // If array[j] > array[r], just increment j.
        // If array[j] <= array[r], swap array[j] with array[q],
        //   increment q, and increment j. 
        // Once all elements in array[p..r-1]
        //  have been compared with array[r],
        //  swap array[r] with array[q], and return q.
        var q = 0;
        for (var j = 0; j < r; j++) {
            if (array[j] <= array[r]) {
                this.swap(array, j, q);
                q++;
            }
        }
        this.swap(array, r, q);
        return q;
    };
}

