module.exports = function () {

    this.println = function (message) {
        console.log(message);
    }


    // Takes in an array that has two sorted subarrays,
    //  from [p..q] and [q+1..r], and merges the array
    this.merge = function (array, p, q, r) {
        var lowHalf = [];
        var highHalf = [];

        var k = p;
        var i;
        var j;
        for (i = 0; k <= q; i++ , k++) {
            lowHalf[i] = array[k];
        }
        for (j = 0; k <= r; j++ , k++) {
            highHalf[j] = array[k];
        }

        k = p;
        i = 0;
        j = 0;
    
        // Repeatedly compare the lowest untaken element in
        //  lowHalf with the lowest untaken element in highHalf
        //  and copy the lower of the two back into array
        while (i < (q - p) && j < (r - q)) {
            if (lowHalf[i] < highHalf[j]) {
                array[k] = lowHalf[i];
                i++;
            }
            else {
                array[k] = highHalf[j];
                j++;
            }
            k++;
        }

    
        // Once one of lowHalf and highHalf has been fully copied
        //  back into array, copy the remaining elements from the
        //  other temporary array back into the array
        this.println("What's in " + array);
        this.println("LowHalf " + lowHalf);
        this.println("HiHalf " + highHalf);
        this.println("k i j " + k + " " + i + " " + j);

        while (i < lowHalf.length) {
            array[k] = lowHalf[i];
            i++;
            k++;
        }

        while (j < highHalf[j]) {
            this.println("In here");
            array[k] = highHalf[j];
            j++;
            k++;
        }

    };


    // Takes in an array and recursively merge sorts it
    this.mergeSort = function (array, p, r) {
        if (r > p) {
            var q = Math.floor((p + r) / 2);
            this.mergeSort(array, p, q);
            this.mergeSort(array, q + 1, r);
            this.merge(array, p, q, r);
        }
    };

}
