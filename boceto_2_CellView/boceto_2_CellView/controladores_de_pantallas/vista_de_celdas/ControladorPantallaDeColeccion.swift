//
//  ControladorPantallaDeColeccion.swift
//  boceto_2_CellView
//
//  Created by alumno on 10/7/24.
//

import UIKit


class ControladorPantallaDeColeccion: UICollectionViewController {
    private var lista_de_publicaciones: [Publicacion] = []
    private let  url_de_publicaciones = "https://jsonplaceholder.typicode.com/posts"
    private let identificador_de_celda = "celda_pantalla_principal"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ubicacion = URL(string: url_de_publicaciones)!
        URLSession.shared.dataTask(with: ubicacion) {
            (datos, respuesta, error) in do {
                if let publicaciones_recibidas = datos{
                    let prueba_de_interpretacion_de_datos = try JSONDecoder().decode([Publicacion].self, from: publicaciones_recibidas)
                    
                    self.lista_de_publicaciones = prueba_de_interpretacion_de_datos
                    
                    DispatchQueue.main.async {                        self.collectionView.reloadData()
                    }
                }
                else {
                    print(respuesta)
                }
            } catch {
                print("Error")
            }
        }.resume()
        
        print(lista_de_publicaciones)
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using [segue destinationViewController].
     // Pass the selected object to the new view controller.
     }
     */
    
    // MARK: UICollectionViewDataSource
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }
    
    

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return self.lista_de_publicaciones.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celda: VistaDeCelda = collectionView.dequeueReusableCell(withReuseIdentifier: identificador_de_celda, for: indexPath) as! VistaDeCelda
    
        // Configure the cell
        //celda.tintColor = UIColor.green
        
        celda.titulo.text = self.lista_de_publicaciones[indexPath.item].title
        celda.cuerpo.text = self.lista_de_publicaciones[indexPath.item].body

        // print(self.lista_de_publicaciones)
        
        return celda
    }
    

    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Se selecciono la celda\(indexPath)")
        
        let pantalla_de_publicacion = storyboard?.instantiateViewController(withIdentifier: "PantallaPublicacion") as! ControladorPantallaDelPost
        
        self.navigationController?.pushViewController(pantalla_de_publicacion, animated: true)
        
        print(self.navigationController)

    }

    // MARK: UICollectionViewDelegate
    
}
