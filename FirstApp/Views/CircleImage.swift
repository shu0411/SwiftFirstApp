//
//  CircleImage.swift
//  FirstApp
//
//  Created by Apple on 2024/04/09.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.red, lineWidth: 4))
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage(image: Image("turtlerock"))
}
