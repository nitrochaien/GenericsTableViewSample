//
//  ViewController.swift
//  GenericTableViewSample
//
//  Created by Dinh Vu Nam on 7/2/18.
//  Copyright © 2018 Dinh Vu Nam. All rights reserved.
//

import UIKit

class ViewController: GenericTableViewController<CustomCell, Person> {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        items = [Person(firstName: "Bill", lastName: "Clinton"),
                 Person(firstName: "Barrack", lastName: "Obama")]
    }
}

