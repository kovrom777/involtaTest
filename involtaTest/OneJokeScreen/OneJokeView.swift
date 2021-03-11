//
//  OneJokeView.swift
//  involtaTest
//
//  Created by Роман Ковайкин on 11.03.2021.
//

import UIKit
import PinLayout

class OneJokeView: UIView {

    let idLabel = UILabel()
    let typeLabel = UILabel()
    let setupLabel = UILabel()
    let punchlineLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        
        let labels = [idLabel, typeLabel, setupLabel, punchlineLabel]
        labels.forEach {
            $0.textColor = .black
            addSubview($0)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
    }
    
}
