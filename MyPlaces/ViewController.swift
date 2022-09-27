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
        self.title = "My Places"
        let tlabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        tlabel.text = self.title
        tlabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        tlabel.backgroundColor = UIColor.clear
        tlabel.adjustsFontSizeToFitWidth = true
        tlabel.textAlignment = .center
        self.navigationItem.titleView = tlabel
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
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
}
