module aptosz3::vectores {
    use std::debug::print;
    use std::vector::{empty, length, borrow, borrow_mut, push_back}; // Solo para crear un vector no es necesario importar la libreria.
    // Pero las operaciones de los vectores (como push, pop_back) si necesitan que la importes.

    fun practica() {
        // Vectores
        let _matriz: vector<vector<u16>> = vector[
            vector[3,5,7],
            vector[4,8,1],
            vector[2,7,9]
        ]; // Una matriz de 3x3 inicializado con elementos arbitrarios.
        let _v1 : vector<u16> = *borrow(&_matriz, 0);
        let _v2 : vector<u16> = *borrow(&_matriz, 1);
        let _v3 : vector<u16> = *borrow(&_matriz, 2);

        print(borrow(&_v1, 0)); 
        print(borrow(&_v1, 1));
        print(borrow(&_v1, 2));
        print(borrow(&_v2, 0));
        print(borrow(&_v2, 1));
        print(borrow(&_v2, 2));
        print(borrow(&_v3, 0));
        print(borrow(&_v3, 1));
        print(borrow(&_v3, 2));
    }

    #[test]
    fun prueba() {
        practica();
    }
}
