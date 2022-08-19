//
//  CalculateView.swift
//  BMI-Calculator-No-Storyboard
//
//  Created by Vianney Marcellin on 2022/08/15.
//

import UIKit

//Create a view to calculate the bmi. It is the main view.
class CalculateView: UIView {
    
    //Create the background using an image in Assets
    let backgroundImage: UIImageView = {
        
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "calculate_background")
        imageView.contentMode = .scaleAspectFill
        
        return imageView
    }()
    
    //Create a label to invite users for calculating their bmi
    let calculateLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "CALCULATE YOUR BMI"
        label.textColor = .darkGray
        label.font = .systemFont(ofSize: 40, weight: .bold)
        label.textAlignment = .natural
        label.numberOfLines = 0
        
        return label
    }()
    
    let heightHeader = SliderHeader(leftText: "Height", rightText: "1.50m")
    
    var heightSlider = CalculateSlider(value: 1.5, minimumValue: 0, maximumValue: 3)
    
    let weightHeader = SliderHeader(leftText: "Weight", rightText: "100Kg")
    
    var weightSlider = CalculateSlider(value: 100, minimumValue: 0, maximumValue: 200)
    
    let calculateButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("CALCULATE", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20)
        button.tintColor = .white
        button.backgroundColor = UIColor(red: 0.45, green: 0.45, blue: 0.82, alpha: 1.00)
        button.titleLabel?.lineBreakMode = .byTruncatingMiddle
        
        return button
    }()
    
    lazy var stackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [calculateLabel, heightHeader, heightSlider, weightHeader, weightSlider, calculateButton])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.alignment = .fill
        stack.distribution = .fillProportionally
        stack.spacing = 10
        stack.contentMode = .scaleToFill
        
        return stack
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setComponent()
        setConstraint()
    }
    
    private func setComponent(){
        [backgroundImage, stackView].forEach {
            addSubview($0)
        }
    }
    
    private func setConstraint(){
        NSLayoutConstraint.activate([
            
            backgroundImage.topAnchor.constraint(equalTo: self.topAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            calculateButton.heightAnchor.constraint(equalToConstant: 51),
            
            heightHeader.heightAnchor.constraint(equalToConstant: 21),
            weightHeader.heightAnchor.constraint(equalToConstant: 21),
            
            heightSlider.heightAnchor.constraint(equalToConstant: 60),
            weightSlider.heightAnchor.constraint(equalToConstant: 60),
            
            stackView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
            stackView.leadingAnchor.constraint(equalTo: self.layoutMarginsGuide.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: self.layoutMarginsGuide.trailingAnchor),
            
            
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
