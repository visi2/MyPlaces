//
//  ViewController.swift
//  MyPlaces
//
//  Created by Andrew Kvasha on 27.09.2022.
//

import UIKit

class MainViewController: UIViewController {

    var ident = "MyCell"
    
    var table = UITableView()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTable()
        view.addSubview(table)
    }


}


extension MainViewController: UITableViewDelegate, UITableViewDataSource {

    private func setupTable() {
        
        self.table = UITableView(frame: view.bounds, style: .grouped)
        self.table.register(UITableViewCell.self, forCellReuseIdentifier: self.ident)
        
        table.dataSource = self
        table.delegate = self
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: self.ident, for: indexPath)
        
        cell.textLabel?.text = "hi"
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
}
