module aptosz3::cadenas {
    use std::debug::print;
    use std::string_utils::debug_string;
    use std::string::{String,utf8};
    use std::option::{Option, some};

    
    struct Persona has drop, copy { 
        nombre: String, 
        grado : String,
        especialidad : String,
    }

    struct Clase has drop {
        materia: String,
        idgrupo: u64, 
        programa: String,
        activo: bool,
        maestro : Persona,
    } 

    struct Escuela has drop {
        nombre : String,
        domicilio : String,
        clases : vector<Clase>,
    }

    fun practica() {
        
        let maestro1 = Persona{ nombre: utf8(b"Josue Martinez"),grado:utf8(b"Maestria"),especialidad : utf8(b"Ingenieria Mecatronica") };
        let maestro2 = Persona{ nombre: utf8(b"Roman Mireles"),grado:utf8(b"Ingenieria"),especialidad : utf8(b"Ingenieria Electronica") };
        let maestro3 = Persona{ nombre: utf8(b"Josue Mireles"),grado:utf8(b"Doctorado"),especialidad : utf8(b"Ingenieria aplicada") };
        let maestro4 = Persona{ nombre: utf8(b"Roman Martinez"),grado:utf8(b"Maestria"),especialidad : utf8(b"Matematicas") };
        let clase1 = Clase {materia : utf8(b"Cinematica de robots"),idgrupo:15356,programa:utf8(b"Ingenieria Mecatronica"),activo:true,maestro:maestro1};
        let clase2 = Clase {materia : utf8(b"Dinamica de robots"),idgrupo:16246,programa:utf8(b"Ingenieria Mecatronica"),activo:true,maestro:maestro1};
        let clase3 = Clase {materia : utf8(b"Probabilidad y Estadistica"),idgrupo:11345,programa:utf8(b"Ingenieria Biomedica"),activo:true,maestro:maestro3};
        let clase4 = Clase {materia : utf8(b"Funciones matematicas"),idgrupo:10445,programa:utf8(b"Ingenieria en Software"),activo:true,maestro:maestro4};
        let _clases : vector<Clase> = vector [
            clase1,clase2,clase3,clase4
        ];
        let _escuela = Escuela{ nombre: utf8(b"Universidad Patos Milenio"),domicilio : utf8(b"Carretera hacia el infinito km 1000"),clases:_clases};
        
        print(&debug_string(&_escuela)) 
    }

    #[test]
    fun prueba() {
        practica();
    }
}
