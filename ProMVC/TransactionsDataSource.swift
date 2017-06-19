//
//  TransactionsDataSource.swift
//  ProMVC
//
//  Created by Le Ngoc HOAN on 6/19/17.
//  Copyright © 2017 Le Ngoc Hoan. All rights reserved.
//

import Foundation
import UIKit

class TransactionsDataSource: NSObject {
    let transactions: [Transaction]
    
    init(transactions: [Transaction]) {
        self.transactions = transactions
    }
}

extension TransactionsDataSource: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return transactions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TransactionCell.identifier) as! TransactionCell
        let transaction = transactions[indexPath.row]
        cell.model = TransactionCell.Model(transaction: transaction)
        return cell
    }
}
