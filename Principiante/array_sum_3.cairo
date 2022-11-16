//Definir que vamos a regresar algo 
%builtins output

//allocate a new memory segment.
from starkware.cairo.common.alloc import alloc
//Ocuparlo para definir las variables a regresar
from starkware.cairo.common.serialize import serialize_word

func array_sum(arr: felt*, size) -> felt {
    if (size == 0) {
        return 0;
    }
    let sum_of_rest = array_sum(arr=arr + 1, size=size - 1);
    return arr[0] + sum_of_rest;
}

func main{output_ptr: felt*}() {
    const ARRAY_SIZE = 3;

    // Allocate an array.
    let (ptr) = alloc();

    // Populate some values in the array. puto
    assert [ptr] = 9;
    assert [ptr + 1] = 16;
    assert [ptr + 2] = 25;

    // Call array_sum to compute the sum of the elements.
    let sum = array_sum(arr=ptr, size=ARRAY_SIZE);

    // Write the sum to the program output.
    serialize_word(sum);

    return ();
}