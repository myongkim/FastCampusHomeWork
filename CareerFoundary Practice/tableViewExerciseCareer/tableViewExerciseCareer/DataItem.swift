//
//  DataItem.swift
//  tableViewExerciseCareer
//
//  Created by Isaac Kim on 03/11/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit

class DataItem {
    var title: String
    var subtitle: String
    var image: UIImage?
    
    init(title: String, subtitle: String, imageName: String?) {
        self.title = title
        self.subtitle = subtitle
        
        // if there is a name called imageName then we will put UIImage into imageName
        if let imageName = imageName {
            if let img = UIImage(named: imageName) {
                image = img
            }
        }
        
    }
}



