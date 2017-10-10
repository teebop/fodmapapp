//
//  ThirdViewController.swift
//  fodmapapp
//
//  Created by Duncan Lees on 18/09/2017.
//  Copyright © 2017 Duncan Lees. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: Properties
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTextField.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        //TODO: replace this to save users name
        nameLabel.text = textField.text
    }
    
    //MARK: Actions
    @IBAction func nameSaveButton(_ sender: UIButton) {
        //nameLabel.text = "Please enter name"
    }
    
}


