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
                        ImagePaintView()
                    } label: {
                        Text("ImagePaintView")
                    }
                    
                    NavigationLink {
                        DrawingGroupView()
                    } label: {
                        Text("DrawingGroupView")
                    }
                } header: {
                    Text("Part Two")
                        .font(.title.bold())
                }
                
                Section {
                    NavigationLink {
                        SpecialEffectsView()
                    } label: {
                        Text("SpecialEffectsView")
                    }
                    
                    NavigationLink {
                        AnimatableDataView()
                    } label: {
                        Text("AnimatableDataView")
                    }
                    
                    NavigationLink {
                        AnimatablePairView()
                    } label: {
                        Text("AnimatablePairView")
                    }
                } header: {
                    Text("Part Three")
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
