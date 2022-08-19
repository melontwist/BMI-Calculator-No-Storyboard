//
//  ViewController.swift
//  BMI-Calculator-No-Storyboard
//
//  Created by Vianney Marcellin on 2022/08/15.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var heightLabel: UILabel!
    var weigthLabel: UILabel!
    
    var heightSlider: UISlider!
    var weightSlider: UISlider!
    
    var calculateView: CalculateView!
    
    var calculatorBrain = CalculatorBrain()
    
    override func loadView() {
        super.loadView()
        calculateView = CalculateView(frame: .zero)
        self.view = self.calculateView
        
        heightLabel = calculateView.heightHeader.rightLabel
        weigthLabel = calculateView.weightHeader.rightLabel
        
        heightSlider = calculateView.heightSlider
        weightSlider = calculateView.weightSlider
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        heightSlider.addTarget(self, action: #selector(heightSliderChanged), for: .valueChanged)
        
        weightSlider.addTarget(self, action: #selector(weightSliderChanged), for: .valueChanged)
        
        calculateView.calculateButton.addTarget(self, action: #selector(calculatePressed), for: .touchUpInside)
        
    }
    
    @objc func heightSliderChanged(_ sender: UISlider){
        
        
        let height = String(format: "%.2f", sender.value)
        
        heightLabel.text = "\(height)m"
        
    }
    
    @objc func weightSliderChanged(_ sender: UISlider){
        
        let  weight = String(format: "%.0f", sender.value)
        weigthLabel.text = "\(weight)Kg"
    }
    
    @objc func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        let secondVC = ResultViewController()
        
        secondVC.bmiValue = calculatorBrain.getBMIValue()
        secondVC.advice = calculatorBrain.getAdvice()
        secondVC.color = calculatorBrain.getColor()
        self.present(secondVC, animated: true, completion: nil)
    
    }
}

