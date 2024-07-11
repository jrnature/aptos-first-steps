module aptosz3::condicionales {
    use std::debug::print;
    use std::string::utf8;

    const EMenor_Edad: u64=1;

    fun practica() {
        // If
        let edad_usuario = 28;
        if (edad_usuario >= 18) { 
            print(&utf8(b"El usuario es mayor de edad (mas de 18 anos)")); 
        }else{
            print(&utf8(b"El usuario es menor de edad (menos de 18 anos)")); 
        }; // Cerramos bloque.
        // Resultado: [debug] "a es mayor a 0"

        
       assert!(edad_usuario < 18, EMenor_Edad ); // Imprime el error si el usuario es menor de edad.
        
    }

    #[test]
    fun prueba() {
        practica();
    }
}
