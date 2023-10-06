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
                    
                    NavigationLink {
                        StrokeBorderAndInsettableShape()
                    } label: {
                        Text("StrokeBorderAndInsettableShape")
                    }
                } header: {
                    Text("Part One")
                        .font(.title.bold())
                }
                
                Section {
                    NavigationLink {
                        CGAffineTransformAndEven_OddFills()
                    } label: {
                        Text("CGAffineTransformAndEven_OddFills")
                    }
                    
                    NavigationLink {
                        ImagePaint()
                    } label: {
                        Text("ImagePaint")
                    }
                    
                    NavigationLink {
                        DrawingGroup()
                    } label: {
                        Text("DrawingGroup")
                    }
                } header: {
                    Text("Part Two")
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
