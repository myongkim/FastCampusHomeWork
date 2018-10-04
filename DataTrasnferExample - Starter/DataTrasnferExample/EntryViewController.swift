//
//  ViewController.swift
//  DataTrasnferExample
//
//  Created by giftbot on 03/10/2018.
//  Copyright © 2018 giftbot. All rights reserved.
//


import UIKit


final class StoredText {
    static let storedData = StoredText()
    private init() {}
    
    var displayText1 = ""
    
}

final class EntryViewController: UIViewController {

    
    
  //  var storedText = ""
    private struct Route {
        static let manualSegue = "ManualSegue"
    }
    
    @IBOutlet private weak var displayLabel: UILabel!
    @IBOutlet private weak var textField: UITextField!
    
    
  override func viewDidLoad() {
    super.viewDidLoad()
    textField.delegate = self
    
  }
    //Common Method
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        super.shouldPerformSegue(withIdentifier: identifier, sender: sender)
        return true
        print("3")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard let nextViewController = segue.destination as? NextViewController else { return }
        
        nextViewController.displayText = StoredText.storedData.displayText1
        
       // storedText = nextViewController.displayText
        print("2")
    }
    
    
    //manual segue
    

    @IBAction private func showNextViewControllerByManuelSegue(_ sender: Any) {
        
        guard shouldPerformSegue(withIdentifier: Route.manualSegue, sender: sender) else {return}
        performSegue(withIdentifier: Route.manualSegue, sender: sender)
        print("1")
        guard let nextViewController = Route.manualSegue as? NextViewController else { return }
        
        nextViewController.displayText = displayLabel.text!
        
        
        
    }
    
    override func performSegue(withIdentifier identifier: String, sender: Any?) {
        super.performSegue(withIdentifier: identifier, sender: sender)
        print("4")
    }
    
    
    //code
    
    
    @IBAction func showNextViewControllerByPresent(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "NextViewController")
        guard let nextVC = vc as? NextViewController else { return }
        
        present(nextVC, animated: true)
        
    }
    
   
    
    
    // unwind
    @IBAction func unwindToToEntryViewController(_ sender: UIStoryboardSegue) {
        
    }
    
    // mark: Textfield event
 
    

}

extension EntryViewController {
     @IBAction func textFieldEditingDidBegin(_ sender: Any) {
        displayLabel.textColor = .blue
    }
     @IBAction func textFieldEditingChanged(_ sender: Any) {
        displayLabel.text = textField.text ?? ""
    }
    
     @IBAction func textFieldEditingDidEnd(_ sender: Any) {
        displayLabel.textColor = .black
    }
    
     @IBAction func textFieldEditingEndOnExit(_ sender: Any) {
        
    }
    
}



extension EntryViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        displayLabel.textColor = .blue
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        displayLabel.text = (textField.text ?? "") + string
        
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextFieldDidEndEditingReason) {
        
        
        displayLabel.text = textField.text ?? ""
        displayLabel.textColor = .black
        
        // with Singleton to storedata and give it use in NextViewController
        StoredText.storedData.displayText1 = displayLabel.text!
      
        UserDefaults.standard.set(displayLabel.text!, forKey: "StoredText")
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
}




