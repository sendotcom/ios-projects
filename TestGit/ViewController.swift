//
//  ViewController.swift
//  TestGit
//
//  Created by H.Gio on 24/01/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var imageRuby: UIImageView!
    @IBOutlet weak var buttonPush: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        print("OK");
        // Do any additional setup after loading the view.
        
        if UIDevice.current.orientation.isLandscape{
            print("Landscape")
        }
    }
    
    
    @IBAction func alertaSimple(_ sender: Any) {
        
        
        let alertaSimple = UIAlertController(title: "Alerta Simple", message: "Esta es una alerta simple", preferredStyle: .alert)
        
        let alertSimpleButton = UIAlertAction(title: "Aceptar", style: .default, handler: nil)
        
        alertaSimple.addAction(alertSimpleButton)
        show(alertaSimple, sender: nil)
        
      
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        /*
        print("He pulsado el boton");
        
        labelTitle.text = "SE CAMBIO"
        
        self.labelTitle.text = "Pulsado"
        
        self.labelTitle.textColor = UIColor.blue
        
        self.labelTitle.font = UIFont.systemFont(ofSize: 30)
        
        self.imageRuby.image = UIImage(named: "oro")
        */
        
        
        let _controller = UIAlertController(title: "I am Rich", message: """
I am rich
I deserv [sic] it
I am good,
healthy & successful
""", preferredStyle:.actionSheet )
        
        // Se define la accion
        let action = UIAlertAction(title: "Cerrar", style: .default) { UIAlertAction in
            print("He pulsado el boton Cerrar")
        }
        
        let action2 = UIAlertAction(title: "Aceptar", style: .default, handler: { (action) in
            print("He pulsao el boton Aceptar")
        })
        
        let action3 = UIAlertAction(title: "Cancelar", style: .destructive){_ in
            print("He pulsao el boton Cacnelar")
        }
        
        _controller.addAction(action);
        _controller.addAction(action2);
        _controller.addAction(action3);
        
        show(_controller, sender: nil)
        
        
        

        
    }
    
    func llamdaDelboton(){
        
    }
}

