//
//  RatinControl.swift
//  FoodRatingApp
//
//  Created by Isaac Kim on 21/10/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit

@IBDesignable class RatingControl: UIStackView {
    
   
        
    

    // Mark: Properties
    private var ratingButtons = [UIButton]()
    var rating = 0 {
        didSet {
            updateButtonSelectionStates()
        }
    }
    
    @IBInspectable var starSize: CGSize = CGSize(width: 44.0, height: 44.0){
        didSet {
            setupButton()
        }
    }
    
    @IBInspectable var starCount: Int = 5 {
        didSet {
            setupButton()
        }
    }
    
    //Mark: Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
        
    }
    required init(coder:NSCoder) {
        super.init(coder: coder)
        setupButton()
        
    }
    //Mark: Button Action
    @objc func ratingButtonTapped(button: UIButton) {
        print("Button pressed 👍")
        guard let index = ratingButtons.index(of: button) else {
            fatalError("The button, \(button), is not in the ratingButtons array: \(ratingButtons)")
        }
        
        //Calculate the rating of the selected button
        let selectedRating = index + 1
        
        if selectedRating == rating {
            //if the selected star represents the current rating, reset the rating to 0
            rating = 0
        } else {
            //otherwise set the rating to the selected star
            rating = selectedRating
        }
        
    }
    
    //Mark: Private Methods
    private func setupButton() {
    
        for button in ratingButtons {
            removeArrangedSubview(button)
            button.removeFromSuperview()
        }
    
        // Load Button Images
        let bundle = Bundle(for: type(of: self))
        let filledStar = UIImage(named: "filledStar", in: bundle, compatibleWith: self.traitCollection)
        let emptyStar = UIImage(named:"emptyStar", in: bundle, compatibleWith: self.traitCollection)
        let highlightedStar = UIImage(named:"highlightedStar", in: bundle, compatibleWith: self.traitCollection)
        
        
        for _ in 0..<starCount {
            //create the button
            let button = UIButton()
            button.backgroundColor = .red
            
            // Set the button images
            button.setImage(emptyStar, for: .normal)
            button.setImage(filledStar, for: .selected)
            button.setImage(highlightedStar, for: .highlighted)
            button.setImage(highlightedStar, for: [.highlighted, .selected])
            
            //add constraints
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: starSize.height).isActive = true
            button.widthAnchor.constraint(equalToConstant: starSize.width).isActive = true
            
         
            
            // Setup the button action
            button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
            //add the button to the Stack
            addArrangedSubview(button)
            
            //Add the new button to the rating button array
            ratingButtons.append(button)
            
        }
        updateButtonSelectionStates()
    
    }
    private func updateButtonSelectionStates() {
        for (index, button) in ratingButtons.enumerated() {
            //if the index of a button is less than the rating, that button should be selected.
            button.isSelected = index < rating
        }
    }
    
    
}
