//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain=CalculatorBrain()
    
    @IBOutlet weak var hightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func hightSliderChanged(_ sender: UISlider) {
        
        hightLabel.text=String(format: "hight : %.2fm", (sender.value))
        
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        
        weightLabel.text=String(format: "weight : %.0fkg", (sender.value))
        
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        let hight=heightSlider.value
        let weight=weightSlider.value
        
        calculatorBrain.calculateBMI(hight:hight,weight:weight)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="goToResult"{
            let destination = segue.destination as! ResultViewController
            destination.bmiValue=calculatorBrain.getBMI()
            destination.advice=calculatorBrain.getAdvice()
            destination.color=calculatorBrain.getColor()
        }
    }
}

