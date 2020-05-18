//
//  ContentView.swift
//  CovidTrackBR
//
//  Created by carloshenrique.carmo on 17/05/20.
//  Copyright © 2020 carloshperc.com. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var covid19Cases: Covid19Cases
    
    init() {
        CovidTrackBR().getCovidResult { covid19Cases in
            if let covid19CasesList = covid19Cases {
                DispatchQueue.main.async {
                    self.covid19Cases = covid19CasesList
                }
            }
            
        }
    }
    
    
    var body: some View {
        NavigationView {
            List {
                Text("dsads")
                Text("asadasds")
                Text("dsadasd")
//                ForEach(covid19Cases) { items in
////                    HStack {
//                        Text(items.state)
////                            .padding()
////                            .foregroundColor(Color.white)
////                            .background(Color.orange)
////                            .clipShape(Circle())
////                            .font(.custom("", size: 22))
////                       VStack(alignment: .leading) {
//                            Text(items.cases)
////                                .foregroundColor(Color.gray)
////                                .font(.custom("", size: 45))
//
////                            HStack(alignment: .center, spacing: 10) {
////                                HStack {
//                                    Text("☠️")
//                                    Text(items.death)
////                                }.padding(5)
////                                    .foregroundColor(Color.black)
////                                    .background(Color.white)
////                                    .cornerRadius(10)
////
////                                HStack {
//                                    Text("🏥")
//                                    Text(items.suspects)
////                                }.padding(5)
////                                    .foregroundColor(Color.black)
////                                    .background(Color.white)
////                                    .cornerRadius(10)
//
////                            }
////                        }
////                        Spacer()
////                    }
//
//                }
            }
            .navigationBarTitle("Covid19 BR ")
        }
    }
}
//                HStack {
//                    Text(tracking.state)
//                        .padding()
//                        .foregroundColor(Color.white)
//                        .background(Color.orange)
//                        .clipShape(Circle())
//                        .font(.custom("", size: 22))
//                    Spacer()
//                    // other code to display the remaining UI
//
//                    VStack(alignment: .center) {
//
//                        Text("\(tracking.cases)")
//                            .foregroundColor(Color.gray)
//                            .font(.custom("", size: 45))
//
//                        HStack(alignment: .center, spacing: 10) {
//                            HStack {
//                                Text("☠️")
//                                Text("\(tracking.death)")
//                            }.padding(5)
//                                .foregroundColor(Color.black)
//                                .background(Color.white)
//                                .cornerRadius(10)
//
//                            HStack {
//                                Text("🏥")
//                                Text("\(tracking.suspects)")
//                            }.padding(5)
//                                .foregroundColor(Color.black)
//                                .background(Color.white)
//                                .cornerRadius(10)
//
//                        }
//
//
//                    }
//
//                    Spacer()
//
//                }
//            }
//
//            .navigationBarTitle("Covid19 BR ")
//
//        }
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
