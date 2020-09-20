//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    
    var calculatorBrain = CalculatorBrain()
   
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //interesting thing to note when we are linking as an action then to get the value and stuff we use "sender.value" but if we have linked as an iboutlet and not an ibaction then we can use the actual variable name which which gave while linking .value to get the value
    
    @IBAction func heightSlider(_ sender: UISlider) {
        
        let height = String(format: "%0.2f", sender.value)
       
        heightLabel.text = ("\(height)m")
        
        
    }
    
    
    
    @IBAction func weightSlider(_ sender: UISlider) {
        
        let weight = String(format: "%0.0f", sender.value)
       weightLabel.text = ("\(weight)Kg")
        
   
        
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
       let height =  heightSlider.value
       let weight = weightSlider.value
       calculatorBrain.calculateBMI(height: height, weight: weight)
        
       self.performSegue(withIdentifier: "goToResult", sender: self)
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
            
        }
    }
    
    
    
}

