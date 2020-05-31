//
//  ContentView.swift
//  CovidTrackBR
//
//  Created by carloshenrique.carmo on 17/05/20.
//  Copyright © 2020 carloshperc.com. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var covid19Cases = [Datum]()
    
    var body: some View {
        NavigationView {
            List(covid19Cases, id: \.uid) { item in
                HStack {
                    VStack(alignment: .leading) {
                        Text(item.uf)
                            .padding()
                            .foregroundColor(Color.white)
                            .background(Color.orange)
                            .clipShape(Circle())
                            .font(.custom("", size: 18))
                        Text(item.state)
                            .foregroundColor(Color.orange)
                            .font(.custom("", size: 13))
                    }
                    Spacer()
                    
                    VStack(alignment: .leading) {
                        HStack(alignment: .firstTextBaseline) {
                            Text("Mortes:")
                            Text("\(item.deaths)")
                        }.padding(5)
                            .foregroundColor(Color.black)
                            .background(Color.white)
                            .cornerRadius(10)
                        
                        HStack(alignment: .firstTextBaseline) {
                            Text("Casos:")
                            Text("\(item.cases)")
                        }.padding(5)
                            .foregroundColor(Color.black)
                            .background(Color.white)
                            .cornerRadius(10)
                    }
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Suspeitos:")
                            Text("\(item.suspects)")
                        }.padding(5)
                            .foregroundColor(Color.black)
                            .background(Color.white)
                            .cornerRadius(10)
                        
                        HStack {
                            Text("Curados:")
                            Text("\(item.refuses)")
                            
                        }.padding(5)
                            .foregroundColor(Color.black)
                            .background(Color.white)
                            .cornerRadius(10)
                    }
                }
            }.navigationBarTitle("Covid19 Track BR")
        }
        .onAppear(perform: loadData)
    }
    
    func loadData() {
        CovidTrackBR().getCovidResult { result in
            if let result = result {
                DispatchQueue.main.async {
                    self.covid19Cases = result.data
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
