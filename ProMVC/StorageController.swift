//
//  StorageController.swift
//  ProMVC
//
//  Created by Le Ngoc Hoan on 6/17/17.
//  Copyright © 2017 Le Ngoc Hoan. All rights reserved.
//

import Foundation

class StorageController {
    fileprivate let documentsDirectoryURL = FileManager.default
        .urls(for: .documentDirectory, in: .userDomainMask)
        .first!
    
    fileprivate var accountsFileURL: URL {
        return documentsDirectoryURL
            .appendingPathComponent("Accounts")
            .appendingPathExtension("plist")
    }
    
    func save(_ accounts: [Account]) {
        let accountsPlist = accounts.map { $0.plistRepresentation } as NSArray
        accountsPlist.write(to: accountsFileURL, atomically: true)
    }
    
    func fetchAccounts() -> [Account] {
        guard let accountsPlist = NSArray(contentsOf: accountsFileURL) as? [[String: AnyObject]] else {
            return []
        }
        
        return accountsPlist.map(Account.init(plist:))
    }
}
