//
//  CreateAccountViewController.swift
//  ProMVC
//
//  Created by Le Ngoc Hoan on 6/17/17.
//  Copyright © 2017 Le Ngoc Hoan. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {
    
    @IBOutlet fileprivate weak var nameTextField: UITextField!
    @IBOutlet fileprivate weak var bankTextField: UITextField!
    @IBOutlet fileprivate weak var numberTextField: UITextField!

    var stateController: StateController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelAccountCreation(_ segue: UIStoryboardSegue) {
    
    }
    
    @IBAction func saveAccount(_ segue: UIStoryboardSegue) {
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "SaveAccountSegue" else {
            return
        }
        
        let account = Account(name: nameTextField.text ?? "", bank: bankTextField.text ?? "", number: numberTextField.text ?? "", transactions: [])
        stateController.add(account)
    }
}
