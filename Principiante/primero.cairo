//Computes the sum of the memory elements at addresses:
//   arr + 0, arr + 1, ..., arr + (size - 1).


// Definimos una función con nombre array_sum y toma dos argumentos arr y size

    //Las variables felt 
func array_sum(arr: felt*, size) -> felt {
    if (size == 0) {
        return 0;
    }

    // size is not zero.
    //Esto es una llamada recursiva de array_sum
        //
    let sum_of_rest = array_sum(arr=arr + 1, size=size - 1);
    return arr[0] + sum_of_rest;
}