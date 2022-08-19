//
//  ResultViewController.swift
//  BMI-Calculator-No-Storyboard
//
//  Created by Vianney Marcellin on 2022/08/17.
//

import UIKit

class ResultViewController: UIViewController {
    
    var resultView: ResultView!
    
    var bmiValue: String?
    var color: UIColor?
    var advice: String?
    
    var bmiLabel: UILabel!
    var adviceLabel: UILabel!
    
    
    override func loadView() {
        super.loadView()
        resultView = ResultView(frame: .zero)
        self.view = self.resultView
        bmiLabel = resultView.bmiLabel
        adviceLabel = resultView.adviceLabel
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        resultView.backgroundColor = color
        
        resultView.recalculateButton.addTarget(self, action: #selector(recalculatePressed), for: .touchUpInside)
        
    }
    
    @objc func recalculatePressed(_ sender: UIButton){
        dismiss(animated: true, completion: nil)
    }
}


