module aptosz3::cadenas {
    use std::debug::print;
    use std::string::{utf8, append, append_utf8};

    fun practica() {
        let cadena = b"\n\rTe vi un punto y, flotando ante mis ojos,\n\rla imagen de tus ojos se quedo,\n\rcomo la mancha oscura orlada en fuego\n\rque flota y ciega si se mira al sol.";
        let cadena1 = b"\n\rTe vi un punto y, flotando ante mis ojos,";
        let cadena2 = b"\n\rla imagen de tus ojos se quedo,";
        let cadena3 = b"\n\rcomo la mancha oscura orlada en fuego";
        let cadena4 = b"\n\rque flota y ciega si se mira al sol.";
        
        let cadena_vacia = b"";
        let cadena_completa = utf8(cadena_vacia);
        append(&mut cadena_completa, utf8(cadena1));
        append_utf8(&mut cadena_completa, cadena2);
        append(&mut cadena_completa, utf8(cadena3));
        append_utf8(&mut cadena_completa, cadena4);
        
        print(&utf8(cadena)); 
        print(&cadena_completa);

        //Cual es el mejor metodo y porque?
        //Desde mi particular punto de vista, considero mejor la integracion linea a linea por su impacto 
        //en la depuracion y rastreo de posibles errores, asi como por el impacto en la lectura y revision
        //del programa para una futura depuracion.  
    }

    #[test]
    fun prueba() {
        practica();
    }
}
