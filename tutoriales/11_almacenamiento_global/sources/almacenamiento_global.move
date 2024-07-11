module cuenta::almacenamiento_global {
    use std::signer; 

    struct Contador has key { 
        valor: u64,
        vuelta : u8,
        activo : bool,
        reseteo : bool
    } 

    public entry fun publicar(cuenta: &signer, valor: u64) { 

        let recurso = Contador { valor:0, vuelta:0, activo:false, reseteo:false}; 
       
        move_to(cuenta, recurso) 
    }

    #[view] 
    public fun obtener_contador(direccion: address): u64 acquires Contador {
        borrow_global<Contador>(direccion).valor 
    }

    #[view] 
    public fun obtener_vuelta(direccion: address): u8 acquires Contador {
        borrow_global<Contador>(direccion).vuelta
    }
    #[view] 
    public fun obtener_activo(direccion: address): bool acquires Contador {
        borrow_global<Contador>(direccion).activo 
    }
    
    #[view] 
    public fun obtener_reseteo(direccion: address): bool acquires Contador {
        borrow_global<Contador>(direccion).reseteo 
    }

    public entry fun incrementar(direccion: address) acquires Contador { 
        let referencia_contador = &mut borrow_global_mut<Contador>(direccion).valor; 
        *referencia_contador = *referencia_contador + 1 
    }

    public entry fun desactivar(direccion: address) acquires Contador { 
        let referencia_activo = &mut borrow_global_mut<Contador>(direccion).activo; 
        *referencia_activo = false
    }

    public entry fun activar(direccion: address) acquires Contador { 
        let referencia_activo = &mut borrow_global_mut<Contador>(direccion).activo; 
        *referencia_activo = true
    }

    public entry fun restablecer(cuenta: &signer) acquires Contador { 
        let referencia_contador = &mut borrow_global_mut<Contador>(signer::address_of(cuenta)).valor; 
        *referencia_contador = 0;
    }

     public entry fun limpiarReseteo(direccion: address) acquires Contador { 
        let referencia_reseteo = &mut borrow_global_mut<Contador>(direccion).reseteo; 
        *referencia_reseteo = false
    }

    #[view] 
    public fun existe(direccion: address): bool { 
        exists<Contador>(direccion) 
    }

    //public entry fun eliminar(cuenta: &signer) acquires Contador { 
    //    let contador = move_from<Contador>(signer::address_of(cuenta)); 
    //    let Contador { valor: _ } = contador; 
    //}

}
