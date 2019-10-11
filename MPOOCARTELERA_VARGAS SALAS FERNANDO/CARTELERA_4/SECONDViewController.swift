//
//  SECONDViewController.swift
//  CARTELERA_4
//
//  Created by Fernando Vargas Salas on 10/6/19.
//  Copyright © 2019 Fernando Vargas Salas. All rights reserved.
//

import UIKit

class SECONDViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
     var horas = [11, 12, 14, 15, 24]

    
    
    @IBOutlet weak var NOMBRE_2: UILabel!
    @IBOutlet weak var POSTER_2: UIImageView!
    @IBOutlet weak var HORARIOS: UITableView!
    
    //var poster = UIImage ()
    var nombre:Peliculas!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NOMBRE_2.text = nombre.nombre
        POSTER_2.image = UIImage(named: nombre.foto)
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50.0
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return horas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let CELL2 = tableView.dequeueReusableCell(withIdentifier: "CELL 2", for: indexPath) as! CELL2TableViewCell
        CELL2.hora.text = "\(horas[indexPath.row]):00"
        if indexPath.row % 2 == 0 {
            CELL2.backgroundColor = .white
        }else{
            CELL2.backgroundColor = .lightGray
            
        }
        return CELL2
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       let thirdVIEW = storyboard?.instantiateViewController(withIdentifier: "THIRDViewController")as? THIRDViewController
        //thirdVIEW?.nombre = [indexPath.row]
        let index = HORARIOS.indexPathForSelectedRow
        thirdVIEW?.hora = "\(horas[indexPath.row]):00"
        thirdVIEW?.nombre = nombre
        self.navigationController?.pushViewController(thirdVIEW!, animated: true)

        
    }
    

}
