//
//  CreateTransactionViewController.swift
//  ProMVC
//
//  Created by Le Ngoc Hoan on 6/17/17.
//  Copyright © 2017 Le Ngoc Hoan. All rights reserved.
//

import UIKit

protocol CreateTransactionViewControllerDelegate: class {
    func add(newTransaction: Transaction)
}

class CreateTransactionViewController: UIViewController {

    weak var delegate: CreateTransactionViewControllerDelegate?
    var newTransactionView: NewTransactionView {
        return view as! NewTransactionView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "SaveTransactionSegue" else {
            return
        }
        
        guard let amount = newTransactionView.amount,
            let description = newTransactionView.transactionDescription,
            let category = newTransactionView.selectedCategory else {
                return
        }
        let transaction = Transaction(amount: amount, description: description, date: Date(), category: category)
        delegate?.add(newTransaction: transaction)
    }
}
