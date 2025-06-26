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
    
    func getInputNumbers() -> (Int, Int)? {
        guard let first = Int(firstText.text ?? ""), let second = Int(secondText.text ?? "") else {
            return nil
        }
        return (first, second)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func sumClicked(_ sender: Any) {
        guard let (firstNumber, secondNumber) = getInputNumbers() else {
            resultLabel.text = "Please enter valid numbers"
            return
        }
        
        resultLabel.text = "Result: \(firstNumber + secondNumber)"
        
    }
    
    
    @IBAction func minusClicked(_ sender: Any) {
        guard let (firstNumber, secondNumber) = getInputNumbers() else {
            resultLabel.text = "Please enter valid numbers"
            return
        }
        
        resultLabel.text = "Result: \(firstNumber - secondNumber)"
        
    }
    
    
    @IBAction func multiplyClicked(_ sender: Any) {
        guard let (firstNumber, secondNumber) = getInputNumbers() else {
            resultLabel.text = "Please enter valid numbers"
            return
        }
        
        resultLabel.text = "Result: \(firstNumber * secondNumber)"
        
    }
    
    
    @IBAction func divideClicked(_ sender: Any) {
        guard let (firstNumber, secondNumber) = getInputNumbers() else {
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

