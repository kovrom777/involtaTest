//
//  ManyJokesView.swift
//  involtaTest
//
//  Created by Роман Ковайкин on 12.03.2021.
//

import UIKit
import PinLayout

class ManyJokesView: UIView {

    let table = UITableView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        
        table.separatorStyle = .none
        table.backgroundColor = .white
        addSubview(table)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        table.pin.all()
        
    }
    
}
