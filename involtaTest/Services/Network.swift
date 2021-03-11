//
//  Network.swift
//  involtaTest
//
//  Created by Роман Ковайкин on 11.03.2021.
//

import Foundation

class Network{
    
    func getOneJoke(complition: @escaping (_ result: JokeModel)->()){
        guard let url = URL(string: "https://official-joke-api.appspot.com/random_joke") else {return}
        let session = URLSession.shared
        let task = session.dataTask(with: url) { (data, response, error) in
            if let error = error{
                print(error.localizedDescription)
                return
            }
            guard let data = data else {
                print("data is empty")
                return
            }
            
            do{
                let result = try JSONDecoder().decode(JokeModel.self, from: data)
                DispatchQueue.main.async {
                    complition(result)
                }
    
            }catch let jsonError{
                print("Error while decoding JSON: \(jsonError.localizedDescription)")
            }
            
            
        }
        task.resume()
    }
    
}
