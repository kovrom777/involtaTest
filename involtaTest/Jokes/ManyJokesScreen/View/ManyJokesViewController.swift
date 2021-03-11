//
//  ManyJokesViewController.swift
//  involtaTest
//
//  Created by Роман Ковайкин on 12.03.2021.
//

import UIKit

class ManyJokesViewController: UIViewController {
    
    let contentView = ManyJokesView()

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    func configuretable(){
        contentView.table.delegate = self
        contentView.table.dataSource = self
    }

    override func loadView() {
        view = contentView
    }

}

extension ManyJokesViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}
