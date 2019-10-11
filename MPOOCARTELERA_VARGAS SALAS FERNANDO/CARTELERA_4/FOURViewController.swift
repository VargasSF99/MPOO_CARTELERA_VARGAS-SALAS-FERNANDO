//
//  FOURViewController.swift
//  CARTELERA_4.2
//
//  Created by Fernando Vargas Salas on 10/9/19.
//  Copyright © 2019 Fernando Vargas Salas. All rights reserved.
//

import UIKit

class FOURViewController: UIViewController {
    var precio : Int!
    
    @IBOutlet weak var COMPRA: UILabel!
    @IBOutlet weak var NOMBRE5: UILabel!
    @IBOutlet weak var HORA: UILabel!
    @IBOutlet weak var POSTER4: UIImageView!
    @IBOutlet weak var DINERO: UILabel!
    @IBOutlet weak var TOTAL: UILabel!
    
    
    
    
    var boletos: Int!
    var nombre: Peliculas!
    var hora: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let total = nombre.precio * boletos
        DINERO.text = " $\(String(total))"
        TOTAL.text = "TOTAL"
        
        COMPRA.text = "Ha comprado : \(String(boletos)) boletos"
        NOMBRE5.text = nombre.nombre
        HORA.text = hora
        POSTER4.image = UIImage(named: nombre.foto)
        
       
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func inicio(_ sender: UIButton) {
    
    }
    
    @IBAction func BOLETOS(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
