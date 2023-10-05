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
                Section {
                    NavigationLink {
                        CreatingCustomPaths()
                    } label: {
                        Text("CreatingCustomPaths")
                    }
                    NavigationLink {
                        PathsVsShapes()
                    } label: {
                        Text("PathsVsShapes")
                    }
                } header: {
                    Text("Part One")
                        .font(.title.bold())
                }
            }
            .navigationTitle("Project 9")
        }
    }
}

#Preview {
    ContentView()
}
