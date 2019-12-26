//
//  ItemDetailView.swift
//  List-swiftui
//
//  Created by Gaurav Parvadiya on 25/12/19.
//  Copyright © 2019 Gaurav Parvadiya. All rights reserved.
//

import SwiftUI

struct ItemDetailView: View {
    
    let item: MenuItem
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(item.name)
                .font(.title)
                .fontWeight(.bold)
            Text(item.description)
            Spacer()
        }
        .padding()
    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetailView(item: MenuItem(id: UUID(), name: "Maple French Toast", photoCredit: "Joseph Gonzalez", price: 6, restrictions: ["G", "V"], description: "Sweet, fluffy, and served piping hot, our French toast is flown in fresh every day from Maple City, Canada, which is where all maple syrup in the world comes from. And if you believe that, we have some land to sell you…"))
    }
}
