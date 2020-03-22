//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Muneeb Ur Rehman on 22/03/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi:BMI?
    
    mutating func calculateBMI(hight:Float,weight:Float){
       let bmiValue=weight/(hight*hight)
        if bmiValue<18.5{
            bmi=BMI(value: bmiValue, advice: "Eat more", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
            
        }else if bmiValue<24.9{
            
            bmi=BMI(value: bmiValue, advice: "You are OK", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        }else{
            
            bmi=BMI(value: bmiValue, advice: "Control you diet bro", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
        
    }
    
    func getBMI()->String{
        return String(format:"%0.1f",bmi?.value ?? 0.0)
    }
    
    func getAdvice()->String{
        return bmi?.advice ?? "no advice"
    }
    func getColor()->UIColor{
        return bmi?.color ?? .red
        
    }
}
