//
//  SliderHeader.swift
//  BMI-Calculator-No-Storyboard
//
//  Created by Vianney Marcellin on 2022/08/15.
//

import UIKit

//Create a header for the slider.
class SliderHeader: UIStackView {
    
    func headerLabel(text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.textColor = .darkGray
        label.font = .systemFont(ofSize: 17, weight: .light)
        label.textAlignment = .natural
        label.numberOfLines = 1
        
        return label
    }
    
    
    var leftLabel: UILabel!
    var rightLabel: UILabel!
    
    init(leftText: String, rightText: String) {
        super.init(frame: .zero)
        
        self.leftLabel = headerLabel(text: leftText)
        self.rightLabel = headerLabel(text: rightText)
        
        self.addArrangedSubview(leftLabel)
        self.addArrangedSubview(rightLabel)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.axis = .horizontal
        self.alignment = .fill
        self.distribution = .equalSpacing
        self.spacing = 0
        self.contentMode = .scaleToFill
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
