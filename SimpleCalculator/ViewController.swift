//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by ozkan on 26.06.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstText: UITextField!
    
    @IBOutlet weak var secondText: UITextField!
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func sumClicked(_ sender: Any) {
        
        let firstTextValue = firstText.text ?? ""
        let secondTextValue = secondText.text ?? ""
        
        guard let firstNumber = Int(firstTextValue), let secondNumber = Int(secondTextValue) else {
            resultLabel.text = "Please enter valid numbers"
            return
        }
        
        resultLabel.text = "Result: \(firstNumber + secondNumber)"
        
    }
    
    
    @IBAction func minusClicked(_ sender: Any) {
        
        let firstTextValue = firstText.text ?? ""
        let secondTextValue = secondText.text ?? ""
        
        guard let firstNumber = Int(firstTextValue), let secondNumber = Int(secondTextValue) else {
            resultLabel.text = "Please enter valid numbers"
            return
        }
        
        resultLabel.text = "Result: \(firstNumber - secondNumber)"
        
    }
    
    
    @IBAction func multiplyClicked(_ sender: Any) {
        
        let firstTextValue = firstText.text ?? ""
        let secondTextValue = secondText.text ?? ""
        
        guard let firstNumber = Int(firstTextValue), let secondNumber = Int(secondTextValue) else {
            resultLabel.text = "Please enter valid numbers"
            return
        }
        
        resultLabel.text = "Result: \(firstNumber * secondNumber)"
        
    }
    
    
    @IBAction func divideClicked(_ sender: Any) {
        
        let firstTextValue = firstText.text ?? ""
        let secondTextValue = secondText.text ?? ""
        
        guard let firstNumber = Int(firstTextValue), let secondNumber = Int(secondTextValue) else {
                resultLabel.text = "Please enter valid numbers"
                return
            }
            guard secondNumber != 0 else {
                resultLabel.text = "Cannot divide by zero"
                return
            }
        
        resultLabel.text = "Result: \(firstNumber / secondNumber)"
        
    }
    

}

