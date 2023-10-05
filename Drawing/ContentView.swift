//
//  ContentView.swift
//  Drawing
//
//  Created by Zach Mommaerts on 10/5/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink {
                    CreatingCustomPaths()
                } label: {
                    Text("CreatingCustomPaths")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
