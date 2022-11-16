//our program will use the “output” builtin.
//The output builtin is what allows the program to communicate with the external world.

//en cairo-run tendremos que colocar --layout=small

%builtins output



from starkware.cairo.common.serialize import serialize_word

//The main() function is the starting point of the Cairo program.

//The output builtin is quite simple: Declaring it using %builtins turns the
//signature of main() to main{output_ptr: felt*}().
//The syntax {output_ptr: felt*} declares an “implicit argument”,
//which means that behind the scenes, it adds both a corresponding
//argument and return value.

func main{output_ptr: felt*}() {
    serialize_word(1234); //ocupamos esa llamada para colocar el valor en la memoria y regresarlo
    serialize_word(4321);
    return ();
}