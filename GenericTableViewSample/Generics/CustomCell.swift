//
//  CustomCell.swift
//  GenericTableViewSample
//
//  Created by Dinh Vu Nam on 7/2/18.
//  Copyright © 2018 Dinh Vu Nam. All rights reserved.
//

import UIKit

class CustomCell: GenericCell<Person> {
    override var item: Person! {
        didSet {
            textLabel?.text = "\(item.firstName) \(item.lastName)"
        }
    }
}
