//
//  ResultView.swift
//  BMI-Calculator-No-Storyboard
//
//  Created by Vianney Marcellin on 2022/08/15.
//

import UIKit

//Create a view for the result.
class ResultView: UIView {
    
    //Create a background view using an image in Assets.
    let backgroundImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "result_background")
        imageView.contentMode = .scaleAspectFill
        
        return imageView
    }()
    
    
    let resultLabel = ResultViewLabel(text: "YOUR RESULT", ofSize: 35, weight: .bold)
    
    let bmiLabel = ResultViewLabel(text: "19.5", ofSize: 80, weight: .bold)
    
    let adviceLabel = ResultViewLabel(text: "EAT SOME MORE SNACKS!", ofSize: 20, weight: .light)
    
    lazy var stackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [resultLabel, bmiLabel, adviceLabel])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.alignment = .fill
        stack.distribution = .fill
        stack.spacing = 8
        
        return stack
    }()
    
    let recalculateButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("RECALCULATE", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20)
        button.tintColor = UIColor(red: 0.45, green: 0.45, blue: 0.82, alpha: 1.00)
        button.backgroundColor = .white
        
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBlue
        setComponent()
        setConstraint()
    }
    
    //Create a method to add all the subviews.
    private func setComponent(){
        [backgroundImage, stackView, recalculateButton].forEach {
            addSubview($0)
        }
    }
    
    //Create a method to set all the constraints.
    private func setConstraint(){
        
        NSLayoutConstraint.activate([
            
            backgroundImage.topAnchor.constraint(equalTo: self.topAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
            recalculateButton.heightAnchor.constraint(equalToConstant: 51),
            recalculateButton.leadingAnchor.constraint(equalTo: self.layoutMarginsGuide.leadingAnchor),
            recalculateButton.trailingAnchor.constraint(equalTo: self.layoutMarginsGuide.trailingAnchor),
            recalculateButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor)
            
        ])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
