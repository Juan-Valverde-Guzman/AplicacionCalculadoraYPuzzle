//
//  ViewController.swift
//  Interfaces
//
//  Created by dam2 on 16/11/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultado: UITextView!
    
    @IBOutlet weak var borrar: UIButton!
    
    @IBOutlet weak var positivoNegativo: UIButton!
    
    @IBOutlet weak var porcentaje: UIButton!
    
    @IBOutlet weak var dividir: UIButton!
    
    @IBOutlet weak var siete: UIButton!
    
    @IBOutlet weak var ocho: UIButton!
    
    @IBOutlet weak var nueve: UIButton!
    
    @IBOutlet weak var multiplicar: UIButton!
    
    @IBOutlet weak var restar: UIButton!
    
    @IBOutlet weak var seis: UIButton!
    
    @IBOutlet weak var cinco: UIButton!
    
    @IBOutlet weak var cuatro: UIButton!
    
    @IBOutlet weak var sumar: UIButton!
    
    @IBOutlet weak var tres: UIButton!
    
    @IBOutlet weak var dos: UIButton!
    
    @IBOutlet weak var uno: UIButton!
    
    @IBOutlet weak var cero: UIButton!
    
    @IBOutlet weak var coma: UIButton!
    
    @IBOutlet weak var igual: UIButton!
    
    var numero1: Int = 0
    
    var result: Int = 0
    
    var operador: String = ""
    
    func numeros(numero: Int) {
            
            if (result != 0) {
                
                result = result * 10 + numero
                
            } else {
                
                result = numero
                
                resultado.text = resultado.text + " \(result)"
                
            }
            
            resultado.text = "\(result)"
        
    }
    
    func operacion(numero: Int) {
        
        switch operador {
            
        case "+":
            
            if (result != 0) {
                
                result = result * 10 + numero
                
                resultado.text = "\(result)"
                
            } else {
                
                result = numero
                
                resultado.text = resultado.text + " \(result)"
                
            }
        
        case "-":
            
            if (result != 0) {
                
                result = result * 10 + numero
                
                resultado.text = "\(result)"
                
            } else {
                
                result = numero
                
                resultado.text = resultado.text + " \(result)"
                
            }
            
        case "*":
            
            if (result != 0) {
                
                result = result * 10 + numero
                
                resultado.text = "\(result)"
                
            } else {
                
                result = numero
                
                resultado.text = resultado.text + " \(result)"
                
            }
            
        case "/":
            
            if (result != 0) {
                
                result = result * 10 + numero
                
                resultado.text = "\(result)"
                
            } else {
                
                result = numero
                
                resultado.text = resultado.text + " \(result)"
                
            }
            
        default:
            
            numeros(numero: numero)
            
            break
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultado.text = "\(result)"
        
    }
    
    @IBAction func botonBorrar(_ sender: Any) {
        
        result = 0
        
        numero1 = 0
        
        resultado.text = "\(result)"
        
        operador = ""
        
    }
    
    @IBAction func botonPositivoNegativo(_ sender: Any) {
        
        if (operador != "") {
            
            if (result > 0) {
                
                result = -result
                
                let pepe = resultado.text.dropLast()
                
                resultado.text = pepe + "\(result)"
                
            } else {
                
                result = -result
                
                var pepe = resultado.text.dropLast()
                
                pepe = pepe.dropLast()
                
                resultado.text = pepe + "\(result)"
                
            }
                
        } else {
            
            result = -result
            
            resultado.text = "\(result)"
            
        }
        
    }
    
    @IBAction func botonPorcentaje(_ sender: Any) {
        
        if let numero = Double(resultado.text) {
            
            let resultadoPorcentaje = numero / 100.0
            
            resultado.text = "\(resultadoPorcentaje)"
            
        }
    }

    
    @IBAction func botonDividir(_ sender: Any) {
        
        numero1 = result
        
        resultado.text = "\(numero1)"
        
        resultado.text = resultado.text + " /"
        
        operador = "/"
        
        result = 0
        
    }
    
    @IBAction func botonSiete(_ sender: Any) {
        
        operacion(numero: 7)
        
    }
    
    @IBAction func botonOcho(_ sender: Any) {
        
        operacion(numero: 8)
        
    }
    
    @IBAction func botonNueve(_ sender: Any) {
        
        operacion(numero: 9)
        
    }
    
    @IBAction func botonMultiplicar(_ sender: Any) {
        
        numero1 = result
        
        resultado.text = "\(numero1)"
        
        resultado.text = resultado.text + " *"
        
        operador = "*"
        
        result = 0
        
    }
    
    @IBAction func botonCuatro(_ sender: Any) {
        
        operacion(numero: 4)
        
    }
    
    @IBAction func botonCinco(_ sender: Any) {
        
        operacion(numero: 5)
        
    }
    
    @IBAction func botonSeis(_ sender: Any) {
        
        operacion(numero: 6)
        
    }
    
    @IBAction func botonRestar(_ sender: Any) {
        
        numero1 = result
        
        resultado.text = "\(numero1)"
        
        resultado.text = resultado.text + " -"
        
        operador = "-"
        
        result = 0
        
    }
    
    @IBAction func botonUno(_ sender: Any) {
        
        operacion(numero: 1)
        
    }
    
    @IBAction func botonDos(_ sender: Any) {
        
        operacion(numero: 2)
        
    }
    
    @IBAction func botonTres(_ sender: Any) {
        
        operacion(numero: 3)
        
    }
    
    @IBAction func botonSumar(_ sender: Any) {
        
        numero1 = result
        
        resultado.text = "\(numero1)"
        
        resultado.text = resultado.text + " +"
        
        operador = "+"
        
        result = 0
        
    }
    
    @IBAction func botonCero(_ sender: Any) {
        
        operacion(numero: 0)
        
    }
    
    @IBAction func botonComa(_ sender: Any) {
        
        if !resultado.text.contains(".") {
            
            resultado.text += "."
            
        }
    }

    
    @IBAction func botonIgual(_ sender: Any) {
        
        if (operador == "+" && numero1 != 0) {
            
            result = result + numero1
            
            resultado.text = "\(result)"
            
        } else if (operador == "-" && numero1 != 0) {
            
            result = numero1 - result
            
            resultado.text = "\(result)"
            
        } else if (operador == "*" && numero1 != 0) {
            
            result = result * numero1
            
            resultado.text = "\(result)"
            
        } else if (operador == "/" && numero1 != 0) {
            
            result = numero1 / result
            
            resultado.text = "\(result)"
            
        } else {
            
            resultado.text = "\(result)"
            
        }
        
    }
    
}
