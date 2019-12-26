//
//  MenuSection.swift
//  List-swiftui
//
//  Created by Gaurav Parvadiya on 25/12/19.
//  Copyright © 2019 Gaurav Parvadiya. All rights reserved.
//

import Foundation

struct MenuSection: Codable, Identifiable {
    let id: UUID
    let name: String
    let items: [MenuItem]
}
