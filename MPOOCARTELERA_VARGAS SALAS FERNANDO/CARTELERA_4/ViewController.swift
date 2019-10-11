//
//  ViewController.swift
//  CARTELERA_4
//
//  Created by Fernando Vargas Salas on 10/5/19.
//  Copyright © 2019 Fernando Vargas Salas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var pelicula:[Peliculas] = [
        Peliculas(nombre: "JOKER", foto: "JOKER", precio: 55),
        Peliculas(nombre: "AD ASTRA", foto: "AD ASTRA", precio: 55),
        Peliculas(nombre: "MALEFICA", foto: "MALEFICA", precio: 55),
         Peliculas(nombre: "108 COSTURAS", foto: "108 COSTURAS", precio: 55),
          Peliculas(nombre: "IT CAP 2", foto: "IT CAP 2", precio: 55),
           Peliculas(nombre: "CHICOS BUENOS", foto: "CHICOS BUENOS", precio: 55),
            Peliculas(nombre: "AMIGO ABOMINABLE", foto: "AMIGO ABOMINABLE", precio: 55),
            
    ]
     
    @IBOutlet weak var TABLA: UITableView!
    @IBOutlet weak var CARTELERA: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
            CARTELERA.text = "CARTELERA"
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180.0
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pelicula.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let CELL = tableView.dequeueReusableCell(withIdentifier: "CELL", for: indexPath) as! CELLTableViewCell
        
        CELL.NOMBRE.text = pelicula[indexPath.item].nombre
        //CELL?.POSTER1.image = UIImage(named: pelicula[indexPath.row])
        
        CELL.imageView?.image = UIImage(named:pelicula[indexPath.row].foto )
        if indexPath.row % 2 == 0 {
            CELL.backgroundColor = .white
        }else{
            CELL.backgroundColor = .lightGray
            
        }
        
        return CELL
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let secondVIEW = storyboard?.instantiateViewController(withIdentifier: "SECONDViewController")as? SECONDViewController
        secondVIEW?.nombre = pelicula[indexPath.row]
        
        self.navigationController?.pushViewController(secondVIEW!, animated: true)
    }
}

