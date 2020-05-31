//
//  Covid19Model.swift
//  CovidTrackBR
//
//  Created by carloshenrique.carmo on 17/05/20.
//  Copyright © 2020 carloshperc.com. All rights reserved.
//
//
//import Foundation
//
//class Covid19Model: ObservableObject {
//    
//    @Published var covid19Cases = [Covid19ViewModel]()
//    
//    func getTrackingData() {
//           
//        CovidTrackBR().getCovidResult { result in
//               if let result = result {
//               DispatchQueue.main.async {
//                    self.result = result
//                }
//               }
//               
//           }
//           
//       }
//    
//}
