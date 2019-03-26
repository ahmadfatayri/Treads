//
//  RunLogVC.swift
//  Treads
//
//  Created by Ahmad Fatayri on 3/20/19.
//  Copyright © 2019 Ahmad Fatayri. All rights reserved.
//

import UIKit

class RunLogVC: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

}

extension RunLogVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Run.getAllRuns()?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "RunLogCell") as? RunLogCell {
            guard let run = Run.getAllRuns()?[indexPath.row] else { return RunLogCell() }
            cell.configure(run: run)
            return cell
        } else {
            return RunLogCell()
        }
    }
    
    
}
