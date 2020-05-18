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
//    @Published var trackings = [Covid19ViewModel]()
//    
//    func getTrackingData() {
//           
//        CovidTrackBR().getCovidResult { trackingList in
//               if let trackingList = trackingList {
//               DispatchQueue.main.async {
//                    self.trackings = trackingList
//                }
//               }
//               
//           }
//           
//       }
//    
//}
