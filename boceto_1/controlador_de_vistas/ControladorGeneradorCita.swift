//
//  ControladorGeneradorCita.swift
//  boceto_1
//
//  Created by alumno on 10/2/24.
//

import UIKit

class ControladorPantallaAgregarCita
: UIViewController{
    var quien_lo_dice: String = ""
    var quien_dice: String = ""
    var cita_creada:Cita? = nil
    
    @IBOutlet weak var quien_lo_dijo_view: UITextField!
    
    @IBAction func agregar_cita_nueva(_ sender: UIButton) {
        // Verificar si los campos de texto están vacíos
        guard let quienLoDijo = quien_lo_dijo_view.text, !quienLoDijo.isEmpty,
              let queDijo = que_es_lo_que_dijo.text, !queDijo.isEmpty else {
            // Mostrar alerta si alguno de los campos está vacío
            mostrarAlertaCamposVacios()
            return
        }
        
        // Si ambos campos tienen texto, crear la cita
        
        cita_creada = Cita(quien_lo_digo: quienLoDijo, que_dijo: queDijo)
        mostrarCitaCreada()
    }

    // Función para mostrar una alerta si los campos están vacíos
    func mostrarAlertaCamposVacios() {
        let alerta = UIAlertController(title: "Error", message: "Por favor, completa todos los campos antes de continuar.", preferredStyle: .alert)
        alerta.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alerta, animated: true, completion: nil)
    }
    
    func mostrarCitaCreada() {
        let alerta = UIAlertController(title: "Correcto", message: "La cita ha sido creada correctamente.", preferredStyle: .alert)
        alerta.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alerta, animated: true, completion: nil)
    }
    @IBOutlet weak var que_es_lo_que_dijo: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
