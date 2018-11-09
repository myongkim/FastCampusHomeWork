//
//  ViewController.swift
//  UserDefaultStudy
//
//  Created by Isaac Kim on 09/11/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var playerName1: UITextField!
    @IBOutlet weak var playerName2: UITextField!
    
    @IBOutlet weak var playerName3: UITextField!
    @IBOutlet weak var playerName4: UITextField!
    @IBOutlet weak var teamDescription: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DataModel.sharedInstance.load()
    
        
        
      
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        teamDescription.layer.borderColor = #colorLiteral(red: 0.1643455135, green: 0.3037365649, blue: 0.6666666865, alpha: 1)
        teamDescription.layer.borderWidth = 1
        teamDescription.layer.cornerRadius = 20
        
        playerName1.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        playerName1.layer.borderWidth = 1
        playerName1.layer.cornerRadius = 20
        
        playerName2.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        playerName2.layer.borderWidth = 1
        playerName2.layer.cornerRadius = 20
        
        playerName3.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        playerName3.layer.borderWidth = 1
        playerName3.layer.cornerRadius = 20
        
        playerName4.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        playerName4.layer.borderWidth = 1
        playerName4.layer.cornerRadius = 20
        
        
        
    }
    
    
    @IBAction func savedPlayerInfo(_ sender: UIButton) {
        
        let dataModel = DataModel.sharedInstance
        
        dataModel.descriptionText = teamDescription.text
        dataModel.teamList[0] = playerName1.text!
        dataModel.teamList[1] = playerName2.text!
        dataModel.teamList[2] = playerName3.text!
        dataModel.teamList[3] = playerName4.text!
        
        dataModel.save()
        
       
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       super.prepare(for: segue, sender: sender)
        
        guard let secondVC = segue.destination as? SecondViewController else { return }
        
        secondVC.longListText.text? = DataModel.DefaultParameterNames.descriptionField
        secondVC.player1.text? = DataModel.DefaultParameterNames.playerName1
        secondVC.player2.text? = DataModel.DefaultParameterNames.playerName2
        secondVC.player3.text? = DataModel.DefaultParameterNames.playerName3
        secondVC.player4.text? = DataModel.DefaultParameterNames.playerName4
    }
   
    
    @IBAction func performSegue(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "secondVC", sender: sender)
        
       
        
    }
    

}

