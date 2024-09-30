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
    

    @IBAction func al_regresar_boton(_ sender: Any) {
    }

    @IBAction func volver_a_pantalla_inicio(segue: UIStoryboardSegue){ 
        let pantalla_citas = segue.source as? ControladorPantallaCitas
        print(pantalla_citas?.cita_actual.texto)
        
        if let pantalla_citas = segue.source as? ControladorPantallaCitas{
            citas_disponibles.agregar_cita(pantalla_citas.cita_actual.texto, quien_lo_dijo: pantalla_citas.cita_actual.nombre)
        }
        else{
            print("Eso no era un objeto de tipo <ControladorPantallCitas>")
        }
    }
    
}

