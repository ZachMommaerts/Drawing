//
//  ChallengeThree.swift
//  Drawing
//
//  Created by Zach Mommaerts on 10/8/23.
//

import SwiftUI

struct ColorCyclingRectangle: View {
    var amount = 0.0
    var steps = 100
    var startPoint: UnitPoint
    var endPoint: UnitPoint
    
    var body: some View {
        ZStack {
            ForEach(0..<steps) { value in
                Rectangle()
                    .inset(by: Double(value))
                    .strokeBorder(
                        LinearGradient(
                            gradient: Gradient(colors: [
                                color(for: value, brightness: 1),
                                color(for: value, brightness: 0.5)
                            ]),
                            startPoint: startPoint,
                            endPoint: endPoint
                        ),
                        lineWidth: 2
                    )
            }
        }
        .drawingGroup()
    }
    
    func color(for value: Int, brightness: Double) -> Color {
        var targetHue = Double(value) / Double(steps) + amount
        
        if targetHue > 1 {
            targetHue -= 1
        }
        
        return Color(hue: targetHue, saturation: 1, brightness: brightness)
    }
}

struct ChallengeThree: View {
    @State private var amount = 0.0
    @State private var startPoint = UnitPoint(x: 0, y: 0)
    @State private var endPoint = UnitPoint(x: 0, y: 0)
    
    var body: some View {
        VStack {
            ColorCyclingRectangle(amount: amount, startPoint: startPoint, endPoint: endPoint)
                .frame(width: 300, height: 300)
            
            Text("Gradient Cycle: \(amount)")
            Slider(value: $amount)
            
            Text("Start Point - X: \(startPoint.x)")
            Slider(value: $startPoint.x)
            
            Text("Start Point - Y: \(startPoint.y)")
            Slider(value: $startPoint.y)
            
            Text("End Point - X: \(startPoint.x)")
            Slider(value: $endPoint.x)
            
            Text("End Point - Y: \(startPoint.y)")
            Slider(value: $endPoint.y)
        }
    }
}

#Preview {
    ChallengeThree()
}
