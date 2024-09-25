//
//  ViewController.swift
//  boceto_1
//
//  Created by alumno on 9/18/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textfield_nombre: UITextField!
    @IBOutlet weak var texfield_cita: UITextField!
    
    var cita_para_enviar: Cita = Cita(quien_lo_digo: "Pikachu", que_dijo: "Pikaaaa")
    
    var citas_disponibles : GeneradorDeCitas = GeneradorDeCitas()
    override func viewDidLoad() {

        citas_disponibles.generar_citas_falsas()
        super.viewDidLoad()

    }

    @IBSegueAction func al_abrir_pantalla_citas(_ coder: NSCoder) -> ControladorPantallaCitas? {
        return ControladorPantallaCitas(cita_para_citar: citas_disponibles.obtener_cita(), coder: coder)
    }

    
}

