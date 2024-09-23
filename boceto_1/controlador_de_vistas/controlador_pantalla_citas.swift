//
//  ViewController.swift
//  boceto_1
//
//  Created by alumno on 9/18/24.
//

import UIKit

class ControladorPantallaCita: UIViewController {

    @IBOutlet weak var nombre_de_quien_lo_dijo: UILabel!
    @IBOutlet weak var que_dijo_muro_texto: UILabel!
    
    var muro_de_texto = ""
    var quien_lo_dijo = ""
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        print ("Error: se ha cargado el default init")
    }
    
    init(muro_texto: String, de_quien: String, coder: NSCoder){
        self.muro_de_texto = muro_texto
        self.quien_lo_dijo = de_quien
        
        super.init(coder: coder)!
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        inicializar_pantalla()
        // Do any additional setup after loading the view.
    }
    
    func inicializar_pantalla(){
        nombre_de_quien_lo_dijo.text = self.quien_lo_dijo
        que_dijo_muro_texto.text = self.muro_de_texto
    }

}
    

