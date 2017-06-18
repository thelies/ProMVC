//
//  StateController.swift
//  ProMVC
//
//  Created by Le Ngoc Hoan on 6/17/17.
//  Copyright © 2017 Le Ngoc Hoan. All rights reserved.
//

import Foundation

class StateController {
    fileprivate let storageController: StorageController
    fileprivate(set) var accounts: [Account]
    
    init(storageController: StorageController) {
        self.storageController = storageController
        self.accounts = storageController.fetchAccounts()
    }
    
    func add(_ account: Account) {
        accounts.append(account)
        storageController.save(accounts)
    }
    
    func update(_ account: Account) {
        for(index, storedAccount) in accounts.enumerated() {
            guard storedAccount.number == account.number else {
                continue
            }
            
            accounts[index] = account
            storageController.save(accounts)
            break
        }
    }
}
