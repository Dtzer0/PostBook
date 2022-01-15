//
//  BookViewController.swift
//  hightonB
//
//  Created by 홍태희 on 2022/01/15.
//

import UIKit
import Moya

class BookViewController: UIViewController {
    
    @IBOutlet weak var listTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        listTable.delegate = self
        listTable.dataSource = self
    }

}

extension BookViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = listTable.dequeueReusableCell(withIdentifier: "books", for : indexPath)
        cell.textLabel?.text = "test text is already!!"
        cell.detailTextLabel?.text = "it is name.."
        return cell
    }
    
}
