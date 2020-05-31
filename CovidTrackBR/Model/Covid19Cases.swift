//
//  Covid19Cases.swift
//  CovidTrackBR
//
//  Created by carloshenrique.carmo on 17/05/20.
//  Copyright © 2020 carloshperc.com. All rights reserved.
//

import Foundation

struct Covid19: Codable {
    let data: [Datum]
}

// MARK: - Datum
struct Datum: Codable {
    let uid: Int
    let uf, state: String
    let cases, deaths, suspects, refuses: Int
}
