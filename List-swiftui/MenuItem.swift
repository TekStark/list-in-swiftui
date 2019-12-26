//
//  MenuItem.swift
//  List-swiftui
//
//  Created by Gaurav Parvadiya on 25/12/19.
//  Copyright © 2019 Gaurav Parvadiya. All rights reserved.
//

import Foundation

struct MenuItem: Codable, Identifiable {
    let id: UUID
    let name: String
    let photoCredit: String
    let price: Double
    let restrictions: [String]
    let description: String
}
