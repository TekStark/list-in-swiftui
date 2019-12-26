//
//  ContentView.swift
//  List-swiftui
//
//  Created by Gaurav Parvadiya on 25/12/19.
//  Copyright © 2019 Gaurav Parvadiya. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let sections = Bundle.main.decode([MenuSection].self, from: "item.json")
    
    var body: some View {
        NavigationView {
            List {
                ForEach(sections) { section in
                    Section(header: Text(section.name)) {
                        ForEach(section.items) { item in
                            NavigationLink(destination: ItemDetailView(item: item)) {
                                VStack(alignment: .leading, spacing: 3) {
                                    Text(item.name)
                                        .fontWeight(.semibold)
                                    Text(item.description)
                                }
                            }
                        }
                    }
                }
            }
            .listStyle(GroupedListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
