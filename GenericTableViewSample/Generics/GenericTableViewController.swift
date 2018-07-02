//
//  GenericTableViewController.swift
//  GenericTableViewSample
//
//  Created by Dinh Vu Nam on 7/2/18.
//  Copyright © 2018 Dinh Vu Nam. All rights reserved.
//

import UIKit

class GenericTableViewController<T: GenericCell<U>, U>: UITableViewController {
    
    private let cellID = "cell"
    
    var items = [U]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initTableView()
    }
    
    func initTableView() {
        tableView.register(T.self, forCellReuseIdentifier: cellID)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return items.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! GenericCell<U>
        cell.item = items[indexPath.row]

        return cell
    }
}

class GenericCell<U>: UITableViewCell {
    var item: U!
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
}
