//
//  ChallengeTwo.swift
//  Drawing
//
//  Created by Zach Mommaerts on 10/8/23.
//

import SwiftUI

struct ArrowTwo: InsettableShape {
    var insetAmount = 0.0
    
    var animatableData: Double {
        get { insetAmount }
        set { insetAmount = newValue }
    }
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        path.move(to: CGPoint(x: rect.midX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
        
        
        return path
    }
    
    func inset(by amount: CGFloat) -> some InsettableShape {
        var arrow = self
        arrow.insetAmount += amount
        return arrow
    }
}

struct ChallengeTwo: View {
    @State private var insetAmount = 1.0
    
    var body: some View {
        VStack {
            ArrowTwo(insetAmount: 20.0)
                .strokeBorder(.blue, style: StrokeStyle(lineWidth: insetAmount, lineCap: .round, lineJoin: .round))

            Text("Inset Amount: \(insetAmount)")
            Slider(value: $insetAmount, in: 1...50)
        }
    }
}

#Preview {
    ChallengeTwo()
}
