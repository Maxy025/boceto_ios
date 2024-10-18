//
//  ControladorPantallaPrincipalDeColeccion.swift
//  boceto_2_CellView
//
//  Created by alumno on 10/18/24.
//

import Foundation
import UIKit

class ControladorPantallaPrincipalDeColeccion: UICollectionViewController{
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath){
    return celda
    
}
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
        print("Selecciono la celda\(indexPath)")
        
        let pantalla_de_publicacion = storyboard?.instantiateViewController(withIdentifier: "PantallaPublicacion") as! ControladorPantallaDelPost
        
        pantalla_de_publicacion.id_publicacion = self.lista_de_publicaciones[indexPath.item].id
    }
}
