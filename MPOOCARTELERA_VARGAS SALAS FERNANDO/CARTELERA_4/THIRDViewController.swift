//
//  THIRDViewController.swift
//  CARTELERA_4
//
//  Created by Fernando Vargas Salas on 10/6/19.
//  Copyright © 2019 Fernando Vargas Salas. All rights reserved.
//

import UIKit

class THIRDViewController: UIViewController {
    
    @IBOutlet weak var NOMBRE_3: UILabel!
    @IBOutlet weak var POSTER_3: UIImageView!
    @IBOutlet weak var HORA: UILabel!
    @IBOutlet weak var BOLETOS: UILabel!
    @IBOutlet weak var CANTIDAD: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var LUGARES: UILabel!
    @IBOutlet weak var DISPONIBLES: UILabel!
    @IBOutlet weak var GENERAL: UILabel!
    
    
    
    var nombre: Peliculas!
    var hora:String!
    var lugares = 60
    //var maximumValue: Int { get 60 }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        NOMBRE_3.text = "PELICULA: \(nombre.nombre)"
        POSTER_3.image = UIImage(named: nombre.foto)
        HORA.text = " FUNCIÓN: \(String(hora))"
        GENERAL.text = "COSTO  $\(String(nombre.precio))"
        
        }
    @IBAction func Stepper(_ sender: UIStepper) {
                 
       let disponibles = lugares - Int(sender.value)
       CANTIDAD.text = (Int(sender.value).description)
        DISPONIBLES.text = "\( String(disponibles)) DE \(lugares)"
        
    }
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let fourVIEW = storyboard?.instantiateViewController(withIdentifier: "FOURViewController")as? FOURViewController

 //       fourVIEW?.hora = hora
  //      fourVIEW?.nombre = nombre
    //    fourVIEW?.boletos = Int(stepper.value)
     //   self.navigationController?.pushViewController(fourVIEW!, animated: true)


   //}
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let fourthView = segue.destination as! FOURViewController
        //fourthView.pelicula = pelicula
        //fourthView.hora = hora
        fourthView.boletos = Int(stepper.value)
        fourthView.nombre = nombre
        fourthView.hora = hora
        

        
    
        }
}
