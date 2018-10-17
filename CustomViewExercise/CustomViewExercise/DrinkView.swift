//
//  DrinkView.swift
//  CustomViewExercise
//
//  Created by Isaac Kim on 17/10/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit

protocol DrinkViewDelegate {
    func increase(_ drinkView: DrinkView)
    func decrease(_ drinkView: DrinkView)
}

@IBDesignable
class DrinkView: UIView {
    
    private let drinkImageView: UIImageView = UIImageView()
    private let decreaseButton: UIButton = UIButton()
    private let increaseButton: UIButton = UIButton()
    private let countLabel: UILabel = UILabel()
    
    @IBInspectable
    var image: UIImage? {
        didSet {
            drinkImageView.image = image
        }
    }
    
    var delegate: DrinkViewDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        // UI Configure
        configure()
        autoLayout()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        // UI Configure
        configure()
        autoLayout()
    }
    
    private func configure() {
        // drinkImageView
        drinkImageView.image = self.image
        drinkImageView.contentMode = .scaleAspectFit
        // button
        decreaseButton.setTitle("-", for: .normal)
        increaseButton.setTitle("+", for: .normal)
        decreaseButton.addTarget(self, action: #selector(tapDecrease(_:)), for: .touchUpInside)
        increaseButton.addTarget(self, action: #selector(tapIncrease(_:)), for: .touchUpInside)
        
        // label
        countLabel.text = "0"
        
        drinkImageView.translatesAutoresizingMaskIntoConstraints = false
        increaseButton.translatesAutoresizingMaskIntoConstraints = false
        decreaseButton.translatesAutoresizingMaskIntoConstraints = false
        countLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // addSubView
        self.addSubview(drinkImageView)
        self.addSubview(decreaseButton)
        self.addSubview(increaseButton)
        self.addSubview(countLabel)
    }
    
    private func autoLayout() {
        
        // ImageView
        drinkImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10).isActive = true
        drinkImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        drinkImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10).isActive = true
        drinkImageView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.6).isActive = true
        
        // Label
        countLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10).isActive = true
        countLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        countLabel.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.5).isActive = true
        countLabel.topAnchor.constraint(equalTo: drinkImageView.bottomAnchor, constant: 10).isActive = true
        
        // Button
        decreaseButton.centerYAnchor.constraint(equalTo: countLabel.centerYAnchor).isActive = true
        decreaseButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10).isActive = true
        decreaseButton.trailingAnchor.constraint(equalTo: countLabel.leadingAnchor, constant: -10).isActive = true
        decreaseButton.heightAnchor.constraint(equalTo: countLabel.heightAnchor).isActive = true
        
        increaseButton.centerYAnchor.constraint(equalTo: countLabel.centerYAnchor).isActive = true
        increaseButton.leadingAnchor.constraint(equalTo: countLabel.trailingAnchor, constant: 10).isActive = true
        increaseButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10).isActive = true
        increaseButton.heightAnchor.constraint(equalTo: countLabel.heightAnchor).isActive = true
        
    }
    // when we want to use selector, we use @objc to access to it.
    @objc func tapIncrease(_ sender: UIButton) {
        self.delegate?.increase(self)
        
    }
    
    @objc func tapDecrease(_ sender: UIButton) {
        self.delegate?.decrease(self)
        
    }
    
    
    
    
    
}
