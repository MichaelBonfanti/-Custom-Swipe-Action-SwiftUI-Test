//
//  ContentView.swift
//  Custom Swipe Action SwiftUI Test
//
//  Created by Michael Bonfanti on 02/12/22.
//

import SwiftUI

struct ContentView: View {
    let city = ["Milan", "Cupertino", "London", "Rome", "New York"]

    var body: some View {
        NavigationStack {
            List {
                ForEach(city, id: \.self) { city in
                    Text(city)
                        .swipeActions(allowsFullSwipe: false) {
                            Button {
                                print("Add City")
                            } label: {
                                Label("Add", systemImage: "plus.circle.fill")
                            }
                            .tint(.green)
                            
                            Button {
                                print("Hide City")
                            } label: {
                                Label("Hide", systemImage: "eye.slash.fill")
                            }
                            .tint(.gray)

                            Button(role: .destructive) {
                                print("Delete City")
                            } label: {
                                Label("Delete", systemImage: "trash.fill")
                            }
                        }
                }
            }
        }
    }
}
