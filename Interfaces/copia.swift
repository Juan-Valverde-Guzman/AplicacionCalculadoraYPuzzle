//
//  PuzzleController.swift
//  Interfaces
//
//  Created by dam2 on 22/11/23.
//

import UIKit

class copia: UIViewController {
    
    /*Cambia lo de imagen1 imagen2 por otra cosa para que se note menos*/
    
    @IBOutlet weak var imagen1: UIImageView!
    
    @IBOutlet weak var imagen2: UIImageView!
    
    @IBOutlet weak var imagen3: UIImageView!
    
    @IBOutlet weak var imagen4: UIImageView!
    
    @IBOutlet weak var imagen5: UIImageView!
    
    @IBOutlet weak var imagen6: UIImageView!
    
    @IBOutlet weak var imagen7: UIImageView!
    
    @IBOutlet weak var imagen8: UIImageView!
    
    @IBOutlet weak var imagen9: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    /*Aqui en vez de hacer una funcion tu pon todo el codigo al final de los botones reemplaza puzzleCorrecto() por todo el codigo desde el if(imagen1.image hasta que se cierra debajo de label.text*/
    
    func puzzleCorrecto() {
        
        if (imagen1.image == UIImage(named: "1") && imagen2.image == UIImage(named: "2") && imagen3.image == UIImage(named: "3") && imagen4.image == UIImage(named: "4") && imagen5.image == UIImage(named: "5") && imagen6.image == UIImage(named: "6") && imagen8.image == UIImage(named: "8") && imagen9.image == UIImage(named: "9")) {
            
            label.text = "Felicidades has completado el puzzle con exito !!"
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*Aqui lo de label lo quitas que no vale pa na*/
        
        label.text = ""
        
        /*Aqui en vez de tener un array del 1 al 9 haz un randomInt con el 1 al 9*/
       
        var arrayImagenes = ["1", "2", "3", "4", "5", "6", "8", "9"]
        
        var numeroAleatorio1 = arrayImagenes.randomElement()
        
        imagen1.image = UIImage(named: numeroAleatorio1!)
        
        
        
        var numeroAleatorio2 = arrayImagenes.randomElement()
        
        repeat {
            
            numeroAleatorio2 = arrayImagenes.randomElement()
            
        } while(numeroAleatorio2 == numeroAleatorio1)
        
        imagen2.image = UIImage(named: numeroAleatorio2!)
        
        
        
        var numeroAleatorio3 = arrayImagenes.randomElement()
        
        repeat {
            
            numeroAleatorio3 = arrayImagenes.randomElement()
            
        } while(numeroAleatorio3 == numeroAleatorio1 || numeroAleatorio3 == numeroAleatorio2)
        
        imagen3.image = UIImage(named: numeroAleatorio3!)
        
        
        
        var numeroAleatorio4 = arrayImagenes.randomElement()
        
        repeat {
            
            numeroAleatorio4 = arrayImagenes.randomElement()
            
        } while(numeroAleatorio4 == numeroAleatorio1 || numeroAleatorio4 == numeroAleatorio2 || numeroAleatorio4 == numeroAleatorio3)
        
        imagen4.image = UIImage(named: numeroAleatorio4!)
        
        
        
        var numeroAleatorio5 = arrayImagenes.randomElement()
        
        repeat {
            
            numeroAleatorio5 = arrayImagenes.randomElement()
            
        } while(numeroAleatorio5 == numeroAleatorio1 || numeroAleatorio5 == numeroAleatorio2 || numeroAleatorio5 == numeroAleatorio3 || numeroAleatorio5 == numeroAleatorio4)
        
        imagen5.image = UIImage(named: numeroAleatorio5!)
        
        
        
        var numeroAleatorio6 = arrayImagenes.randomElement()
        
        repeat {
            
            numeroAleatorio6 = arrayImagenes.randomElement()
            
        } while(numeroAleatorio6 == numeroAleatorio1 || numeroAleatorio6 == numeroAleatorio2 || numeroAleatorio6 == numeroAleatorio3 || numeroAleatorio6 == numeroAleatorio4 || numeroAleatorio6 == numeroAleatorio5)
        
        imagen6.image = UIImage(named: numeroAleatorio6!)
        
        
        
        var numeroAleatorio8 = arrayImagenes.randomElement()
        
        repeat {
            
            numeroAleatorio8 = arrayImagenes.randomElement()
            
        } while(numeroAleatorio8 == numeroAleatorio1 || numeroAleatorio8 == numeroAleatorio2 || numeroAleatorio8 == numeroAleatorio3 || numeroAleatorio8 == numeroAleatorio4 || numeroAleatorio8 == numeroAleatorio5 || numeroAleatorio8 == numeroAleatorio6)
        
        imagen8.image = UIImage(named: numeroAleatorio8!)
        
        
        
        var numeroAleatorio9 = arrayImagenes.randomElement()
        
        repeat {
            
            numeroAleatorio9 = arrayImagenes.randomElement()
            
        } while(numeroAleatorio9 == numeroAleatorio1 || numeroAleatorio9 == numeroAleatorio2 || numeroAleatorio9 == numeroAleatorio3 || numeroAleatorio9 == numeroAleatorio4 || numeroAleatorio9 == numeroAleatorio5 || numeroAleatorio9 == numeroAleatorio6 || numeroAleatorio9 == numeroAleatorio8)
        
        imagen9.image = UIImage(named: numeroAleatorio9!)
        
    }
    
    /*Todos estos if dentro de los botones nose si puedes hacerlos funcion o algo*/
    
    @IBAction func boton1Action(_ sender: Any) {
        
        if (imagen2.image == nil) {
            
            imagen2.image = imagen1.image
            
            imagen1.image = nil
            
        }
        
        if (imagen4.image == nil) {
            
            imagen4.image = imagen1.image
            
            imagen1.image = nil
            
        }
        
        puzzleCorrecto()
        
    }
    
    @IBAction func boton2Action(_ sender: Any) {
        
        if (imagen1.image == nil) {
            
            imagen1.image = imagen2.image
            
            imagen2.image = nil
            
        }
        
        if (imagen3.image == nil) {
            
            imagen3.image = imagen2.image
            
            imagen2.image = nil
            
        }
        
        if (imagen5.image == nil) {
            
            imagen5.image = imagen2.image
            
            imagen2.image = nil
            
        }
        
        puzzleCorrecto()
        
    }
    
    @IBAction func boton3Action(_ sender: Any) {
        
        if (imagen2.image == nil) {
            
            imagen2.image = imagen3.image
            
            imagen3.image = nil
            
        }
        
        if (imagen6.image == nil) {
            
            imagen6.image = imagen3.image
            
            imagen3.image = nil
            
        }
        
        puzzleCorrecto()
        
    }
    
    @IBAction func boton4Action(_ sender: Any) {
        
        if (imagen1.image == nil) {
            
            imagen1.image = imagen4.image
            
            imagen4.image = nil
            
        }
        
        if (imagen5.image == nil) {
            
            imagen5.image = imagen4.image
            
            imagen4.image = nil
            
        }
        
        if (imagen7.image == nil) {
            
            imagen7.image = imagen4.image
            
            imagen4.image = nil
            
        }
        
        puzzleCorrecto()
        
    }
    
    @IBAction func boton5Action(_ sender: Any) {
        
        if (imagen2.image == nil) {
            
            imagen2.image = imagen5.image
            
            imagen5.image = nil
            
        }
        
        if (imagen4.image == nil) {
            
            imagen4.image = imagen5.image
            
            imagen5.image = nil
            
        }
        
        if (imagen6.image == nil) {
            
            imagen6.image = imagen5.image
            
            imagen5.image = nil
            
        }
        
        if (imagen8.image == nil) {
            
            imagen8.image = imagen5.image
            
            imagen5.image = nil
            
        }
        
        puzzleCorrecto()
        
    }
    
    @IBAction func boton6Action(_ sender: Any) {
        
        if (imagen3.image == nil) {
            
            imagen3.image = imagen6.image
            
            imagen6.image = nil
            
        }
        
        if (imagen5.image == nil) {
            
            imagen5.image = imagen6.image
            
            imagen6.image = nil
            
        }
        
        if (imagen9.image == nil) {
            
            imagen9.image = imagen6.image
            
            imagen6.image = nil
            
        }
        
        puzzleCorrecto()
        
    }
    
    @IBAction func boton7Action(_ sender: Any) {
        
        if (imagen4.image == nil) {
            
            imagen4.image = imagen7.image
            
            imagen7.image = nil
            
        }
        
        if (imagen8.image == nil) {
            
            imagen8.image = imagen7.image
            
            imagen7.image = nil
            
        }
        
        puzzleCorrecto()
        
    }
    
    @IBAction func boton8Action(_ sender: Any) {
        
        if (imagen7.image == nil) {
            
            imagen7.image = imagen8.image
            
            imagen8.image = nil
            
        }
        
        if (imagen5.image == nil) {
            
            imagen5.image = imagen8.image
            
            imagen8.image = nil
            
        }
        
        if (imagen9.image == nil) {
            
            imagen9.image = imagen8.image
            
            imagen8.image = nil
            
        }
        
        puzzleCorrecto()
        
    }
    
    @IBAction func boton9Action(_ sender: Any) {
        
        if (imagen8.image == nil) {
            
            imagen8.image = imagen9.image
            
            imagen9.image = nil
            
        }
        
        if (imagen6.image == nil) {
            
            imagen6.image = imagen9.image
            
            imagen9.image = nil
            
        }
        
        puzzleCorrecto()
        
    }
    
    
}
