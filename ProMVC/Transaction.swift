//
//  Transaction.swift
//  ProMVC
//
//  Created by Le Ngoc Hoan on 6/17/17.
//  Copyright © 2017 Le Ngoc Hoan. All rights reserved.
//

import Foundation
import UIKit

enum TransactionCategory: String {
    case income
    case groceries
    case utilities
    case home
    case transport
    case fun
}

extension TransactionCategory {
    struct Appearance {
        let color: UIColor
        let image: UIImage
    }
    
    var appearance: Appearance {
        switch self {
        case .income:
            return Appearance(color: .lightGrassGreen, image: UIImage(named: "Income")!)
        case .groceries:
            return Appearance(color: .seafoamBlue, image: UIImage(named: "Groceries")!)
        case .utilities:
            return Appearance(color: .liliac, image: UIImage(named: "Utilities")!)
        case .home:
            return Appearance(color: .sunflowerYellow, image: UIImage(named: "Home")!)
        case .transport:
            return Appearance(color: .peach, image: UIImage(named: "Transport")!)
        case .fun:
            return Appearance(color: .carnation, image: UIImage(named: "Fun")!)
        }
    }
}

struct Transaction {
    let amount: Float
    let description: String
    let date: Date
    let category: TransactionCategory
}

extension Transaction {
    var plistRepresentation: [String: AnyObject] {
        return [
            "amount": amount as AnyObject,
            "description": description as AnyObject,
            "date": date as AnyObject,
            "category": category.rawValue as AnyObject
        ]
    }
    
    init(plist: [String: AnyObject]) {
        amount = plist["amount"] as! Float
        description = plist["desciption"] as! String
        date = plist["date"] as! Date
        category = TransactionCategory(rawValue: plist["category"] as! String)!
    }
}
