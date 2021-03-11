//
//  OneJokeViewController.swift
//  involtaTest
//
//  Created by Роман Ковайкин on 11.03.2021.
//

import UIKit

class OneJokeViewController: UIViewController {
    
    let contentView = OneJokeView()
    let network = Network()
    override func viewDidLoad() {
        super.viewDidLoad()
        network.getOneJoke { (joke) in
            self.contentView.setup(id: joke.id, type: joke.type, setup: joke.setup, puchline: joke.punchline)
        }
    }
    
    override func loadView() {
        view = contentView
    }
}
