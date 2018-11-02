//
//  ViewController.swift
//  AnimationWithTeacher
//
//  Created by Isaac Kim on 02/11/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    struct Time {
        static let short = 0.3
        static let middle = 0.65
        static let long = 1.0
        
    }
    
    private struct UI {
        static let menuCount = 5
        static let menuSize: CGFloat = 50
        static let distance: CGFloat = 130
        static let minScale: CGFloat = 0.2
    }
    
    private var firstMenuContainer: [UIButton] = []
    
    
    // Mark: Setup UI
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupFirstMenus()
        
    }
    

    private func setupFirstMenus() {
        for i in (0..<UI.menuCount) {
            let menuFrame = CGRect(x: 50, y: view.bounds.height - 110, width: UI.menuSize, height: UI.menuSize)
            let button = makeMenuButtonWith(frame: menuFrame, title:"버튼\(i)")
            firstMenuContainer.append(button)
            
            
            if i == 0 {
                button.transform = .identity
                button.addTarget(self, action: #selector(firstMenuDidTap(_:)), for: .touchUpInside)
            }
        }
        view.bringSubviewToFront(firstMenuContainer.first!)
        
        
    }
    // Mark: one function does only one thing is better
    private func makeMenuButtonWith(frame: CGRect, title: String) -> UIButton {
        let button = UIButton(frame: frame)
        button.backgroundColor = randomColorGenerator()
        button.setTitle(title, for: .normal)
        button.layer.cornerRadius = button.bounds.width / 2
        button.transform = button.transform.scaledBy(x: UI.minScale, y: UI.minScale)
        view.addSubview(button)
        return button
    }
    
    private func randomColorGenerator() -> UIColor {
        let red = CGFloat.random(in: 0 ... 1.0)
        let green = CGFloat.random(in: 0 ... 1.0)
        let blue = CGFloat.random(in: 0 ... 1.0)
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        
        
        
    }
    
    @objc private func firstMenuDidTap(_ sender: UIButton) {
        print("\n===============firstMenuDidTap========================\n")
        sender.isSelected.toggle()
        UIView.animate(withDuration: Time.middle,
                       delay: 0,
                       usingSpringWithDamping: 0.8,
                       initialSpringVelocity: 0,
                       options: [],
                       animations: { [firstMenuContainer] in
                        for (idx, menu) in firstMenuContainer.enumerated() {
                            guard idx != 0 else { continue }
                            if sender.isSelected {
                                menu.transform = .identity
                                menu.frame.origin.y -= UI.distance * CGFloat(idx)
                            } else {
                               
                            menu.transform = menu.transform.scaledBy(x: UI.minScale, y: UI.minScale)
                                menu.frame.origin.y += UI.distance * CGFloat(idx)
                            }
                        }
                        })
    }
}

