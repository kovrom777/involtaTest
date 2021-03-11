//
//  ViewController.swift
//  involtaTest
//
//  Created by Роман Ковайкин on 11.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    let contentView = MainView()

    override func viewDidLoad() {
        super.viewDidLoad()
        fetchExampleImage()
    }
    
    func fetchExampleImage(){
        print(#function)
        guard let url = URL(string: MainScreenModel.randomUrlArray[Int.random(in: 0..<MainScreenModel.randomUrlArray.count)]) else {
            return
        }
        
        let queue = DispatchQueue.global(qos: .userInitiated)
        queue.async {
            if let data = try? Data(contentsOf: url){
                DispatchQueue.main.async {
                    self.contentView.imageView.image = UIImage(data: data)
                }
            }
        }
    }

    override func loadView() {
        view = contentView
    }

}

