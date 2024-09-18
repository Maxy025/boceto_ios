//
//  generador_de_citas.swift
//  boceto_1
//
//  Created by alumno on 9/18/24.
//

import Foundation

class GeneradorDeCitas{
    var citas_creadas: Array <Cita>
    
    init(){
        citas_creadas = []
    }
    
    func agregar_cita(_ que_dijo: String, quien_lo_dijo: String){
        var cita_generada = Cita(quien_lo_digo: <#T##String#>, que_dijo: <#T##String#>)
        
        citas_creadas.append(cita_generada)
    }
    
    func imprimir_cita() -> Cita{
        return citas_creadas[0]
    }
}


var citas_de_IADA = GeneradorDeCitas()

citas_de_IADA.agregar_cita("Tengo Hambre", quien_lo_dijo: "Todos")

print(citas_de_IADA.imprimir_cita())
