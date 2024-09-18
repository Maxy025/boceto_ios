//
//  Cita.swift
//  boceto_1
//
//  Created by alumno on 9/18/24.
//

import Foundation

struct Cita{
    var nombre: String
    var texto: String
    
    init(quien_lo_digo: String, que_dijo: String) {
        self.nombre = quien_lo_digo
        self.texto = que_dijo
    }
}
