//
//  Covid19Cases.swift
//  CovidTrackBR
//
//  Created by carloshenrique.carmo on 17/05/20.
//  Copyright © 2020 carloshperc.com. All rights reserved.
//

import Foundation

// MARK: - Welcome
//struct Covid19Cases: Decodable {
//    let data: [Datum]
//}
//
//// MARK: - Datum
//struct Datum: Decodable {
//    let uid: Int
//    let uf, state: String
//    let cases, deaths, suspects, refuses: Int
//    let datetime: Datetime
//}
//
//enum Datetime: String, Decodable {
//    case the20200517T021827790Z = "2020-05-17T02:18:27.790Z"
//}

struct Covid19Cases: Codable, Equatable ,Identifiable {
    var id: UUID
    var uf, state: String
    var cases, deaths, suspects, refuses: Int
    var datetime: String
}
