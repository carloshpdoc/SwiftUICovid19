//
//  API.swift
//  CovidTrackBR
//
//  Created by carloshenrique.carmo on 17/05/20.
//  Copyright © 2020 carloshperc.com. All rights reserved.
//

import Foundation

class CovidTrackBR {
    
    func getCovidResult(completion: @escaping (Covid19?) ->  Void) {
        let urlString = "https://covid19-brazil-api.now.sh/api/report/v1"
       
        guard let url = URL(string:	urlString) else {
            fatalError("Invalid URL")
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data, error == nil else {
                return completion(nil)
            }
            
            let covid19Cases = try? JSONDecoder().decode(Covid19.self, from: data)

            completion(covid19Cases)
            
        }.resume()
        
    }
    
}
