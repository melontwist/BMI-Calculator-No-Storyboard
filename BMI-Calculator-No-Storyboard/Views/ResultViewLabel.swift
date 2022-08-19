//
//  ResultViewLabel.swift
//  BMI-Calculator-No-Storyboard
//
//  Created by Vianney Marcellin on 2022/08/15.
//

import UIKit

//Create a label you can reuse in multiple places.
class ResultViewLabel: UILabel {

    init(text: String, ofSize: CGFloat, weight: UIFont.Weight){
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.text = text
        self.textColor = .white
        self.font = .systemFont(ofSize: ofSize, weight: weight)
        self.textAlignment = .center
        self.baselineAdjustment = .alignBaselines
        self.numberOfLines = 0

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
