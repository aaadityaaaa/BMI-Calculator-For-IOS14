//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Aaditya Singh on 25/08/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit
//all the calculation is taking place here 
struct CalculatorBrain {
    
    //var bmiValue = "0.0"
    var bmi: BMI?
    
    func getAdvice() -> String {
           
           let bmiAdvice = (bmi?.advice)!
           return bmiAdvice
       }
    
    func getColor() -> UIColor {
          
          let bmiColor = (bmi?.color)!
          return bmiColor
      }
    
    mutating func calculateBMI(height: Float, weight: Float){
           let bmiValue = weight/(height * height)
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "eat more pies", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        }
        else if bmiValue < 24.9{
             bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        }
        
        else{
             bmi = BMI(value: bmiValue, advice: " Eat less pies", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
       }
    
    func getBMIValue() -> String {
        let bmito1decimalplace = String(format: "%.1f", bmi?.value ?? 0.0)
       // bmiValue = String(format: "%.1f", bmi)
        return bmito1decimalplace
    }
    
   
  
}





// bmi =  weight/(height*height)
