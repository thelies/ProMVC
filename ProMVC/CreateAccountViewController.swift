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
}
