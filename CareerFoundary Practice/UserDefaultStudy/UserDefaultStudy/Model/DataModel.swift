//
//  DataMOdelController.swift
//  UserDefaultStudy
//
//  Created by Isaac Kim on 09/11/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import Foundation

// singleton class to control data model persistence
class DataModel {
    static let sharedInstance = DataModel()
    
    struct DefaultParameterNames {
        static let descriptionField = "Description"
        static let playerName1 = "Player 1"
        static let playerName2 = "Player 2"
        static let playerName3 = "Player 3"
        static let playerName4 = "Player 4"
    }
    
    let userDefault = UserDefaults.standard
    
    var descriptionText = ""
    var teamList = ["","","",""]
    
    //declared private to ensure it's thread-safe for a singleton
    private init() {}
    
    func load() {
        descriptionText = (userDefault.object(forKey: DefaultParameterNames.descriptionField) as? String ?? "")
        // it will remove the previous savings
        teamList.removeAll()
        
        teamList.append(userDefault.object(forKey: DefaultParameterNames.playerName1) as? String ?? "")
        teamList.append(userDefault.object(forKey: DefaultParameterNames.playerName2) as? String ?? "")
        teamList.append(userDefault.object(forKey: DefaultParameterNames.playerName3) as? String ?? "")
        teamList.append(userDefault.object(forKey: DefaultParameterNames.playerName4) as? String ?? "")
   }
    
    func save() {
        userDefault.set(descriptionText, forKey: DefaultParameterNames.descriptionField)
        userDefault.set(teamList[0], forKey: DefaultParameterNames.playerName1)
        userDefault.set(teamList[1], forKey: DefaultParameterNames.playerName1)
        userDefault.set(teamList[2], forKey: DefaultParameterNames.playerName1)
        userDefault.set(teamList[3], forKey: DefaultParameterNames.playerName1)
    }
    
}
