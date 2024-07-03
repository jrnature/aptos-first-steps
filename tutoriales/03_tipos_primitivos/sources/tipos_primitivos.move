module aptosz3::tipos_primitivos {
    use std::debug::print;

    const VALOR_CONSTANTE : u16 = 2024; //Declaracion de constante entera

    fun practica() {
        let valor_variable : u16 =2030; //Declaracion de variable entera

        print(&VALOR_CONSTANTE);  //Imprime constante
        print(&valor_variable); //Imprime variable

        let valoresIguales = VALOR_CONSTANTE == valor_variable; //La variable valoresIguales contiene la comparacion 
        let constanteMasGrande = VALOR_CONSTANTE > valor_variable; //Si VALOR_CONSTANTE > valor_variable resulta true
        let resultadoComparaciones = constanteMasGrande && valoresIguales; // Se utiliza un and para saber si son iguales las comparaciones anteriores

        print(&resultadoComparaciones);
    }

    #[test]
    fun prueba() {
        practica();
    }
}
