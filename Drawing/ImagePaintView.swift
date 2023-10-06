//
//  ImagePaintView.swift
//  Drawing
//
//  Created by Zach Mommaerts on 10/5/23.
//

import SwiftUI

struct ImagePaintView: View {
    var body: some View {
        Capsule()
            .strokeBorder(ImagePaint(image: Image("Example"), scale: 0.1), lineWidth: 20)
            .frame(width: 300, height: 200)
    }
}

#Preview {
    ImagePaintView()
}
