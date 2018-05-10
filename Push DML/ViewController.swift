//
//  ViewController.swift
//  Push DML
//
//  Created by Dean Lindsey on 10/05/2018.
//  Copyright © 2018 Dean Lindsey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = URL(string: "https://fcm.googleapis.com/fcm/send") {
            var request = URLRequest(url: url)
            request.allHTTPHeaderFields = ["Content-type":"application/json", "Authorization":"key= AAAAA1vUZP0:APA91bEOgDS0KkU0ilpDkX6K_5J8ElNgRfllHBeAWt4Yxp2L-PwED8w1UvIyyVOXf5XZLOfXH1V5rRJYlCO80PuaRzkKSDZv_J3dlGnIKIEX90TalCshKa4btb2WI7rZXMvSZhVLPgAO"]
            request.httpMethod = "POST"
            request.httpBody = "{\"to\":\"fGc3tXfqw-Q:APA91bETc4yyEsErgF9K55wVJsoStaREX-qT7yObXj77R-V4zwmf73oNJOWKAY9EgMWI0aYzdaub_-nHZEWDwFR5wcQDVUuLRzBIlFdV4RdEA4Jz9JlocVvEV5R5v33sQZoE4YuSraR7\",\"notification\":{\"title\":\"HTTP NOTIFICATION\",}}".data(using: .utf8)
            
            URLSession.shared.dataTask(with: request) { (data, urlresponse, error) in
                if error != nil {
                    print(error!)
                }
            }.resume()
        }
        
        
    }
    
}

