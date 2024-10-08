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
    
    @IBOutlet weak var labelcito: UILabel!
    var cita_para_enviar: Cita = Cita(quien_lo_digo: "Pikachu", que_dijo: "Pikaaaa")
    
    var citas_disponibles : GeneradorDeCitas = GeneradorDeCitas()
    override func viewDidLoad() {

        citas_disponibles.generar_citas_falsas()
        super.viewDidLoad()
        
        actualizar_cantidad()
        
       
        
    }
    
    func actualizar_cantidad(){
        labelcito.text = String(citas_disponibles.citas_creadas.count)
    }

    @IBSegueAction func al_abrir_pantalla_citas(_ coder: NSCoder) -> ControladorPantallaCitas? {
        return ControladorPantallaCitas(cita_para_citar: citas_disponibles.obtener_cita(), coder: coder)
    }
    

    @IBAction func al_regresar_boton(_ sender: Any) {
    }

    @IBAction func voler_a_pantalla_inicio(segue: UIStoryboardSegue){
        if let pantalla_agregar_citas = segue.source as? ControladorPantallaAgregarCita,
           let cita = pantalla_agregar_citas.cita_creada {
            citas_disponibles.agregar_cita(cita)
        } else {
            // Manejar el caso cuando no se creó una cita
            print("No se creó una cita")
        }
    }
    
}

