//
//  CalculateSlider.swift
//  BMI-Calculator-No-Storyboard
//
//  Created by Vianney Marcellin on 2022/08/15.
//

import UIKit

//Create a slider.
class CalculateSlider: UISlider {
    
    init(value: Float, minimumValue: Float, maximumValue: Float) {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.minimumValue = minimumValue
        self.maximumValue = maximumValue
        self.value = value
        self.minimumTrackTintColor = UIColor(red: 0.45, green: 0.45, blue: 0.82, alpha: 0.52)
        self.thumbTintColor = UIColor(red: 0.45, green: 0.45, blue: 0.82, alpha: 0.50)
        self.isContinuous = true
        
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
