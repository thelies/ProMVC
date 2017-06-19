//
//  AccountsViewController.swift
//  ProMVC
//
//  Created by Le Ngoc Hoan on 6/17/17.
//  Copyright © 2017 Le Ngoc Hoan. All rights reserved.
//

import UIKit

class AccountsViewController: UIViewController {
    
    @IBOutlet fileprivate weak var tableView: UITableView!

    var stateController: StateController!
    fileprivate var dataSource: AccountsDataSource!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        dataSource = AccountsDataSource(accounts: stateController.accounts)
        tableView.dataSource = dataSource
        tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier! {
        case "CreateAccountSegue":
            if let navigationController = segue.destination as? UINavigationController,
                let createAccountViewController = navigationController.viewControllers.first as? CreateAccountViewController {
                createAccountViewController.stateController = stateController
            }
        case "TransactionSegue":
            if let transactionsViewController = segue.destination as? TransactionsViewController,
                let selectedIndex = tableView.indexPathForSelectedRow?.row {
                let account = dataSource.accounts[selectedIndex]
                transactionsViewController.account = account
                transactionsViewController.stateController = stateController
            }
        default:
            break
        }
    }
    
    @IBAction func cancelAccountCreation(_ segue: UIStoryboardSegue) {
        
    }
    
    @IBAction func saveAccount(_ segue: UIStoryboardSegue) {
        
    }
}
