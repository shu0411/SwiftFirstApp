//
//  bk_tutorialView.swift
//  FirstApp
//
//  Created by Apple on 2024/04/10.
//

import SwiftUI

struct bk_tutorialView: View {
    @State private var description: String = "Descriptive text goes here."
    @State private var text: String = ""
    
    var body: some View {
        MapView(coordinate: landmarks[0].locationCordinate)
            .frame(height:300)
        CircleImage(image: landmarks[0].image)
            .offset(y: -130)
            .padding(.bottom, -130)
        VStack(alignment: .leading){
            Text("Turtle Rock")
                .font(.title)
                .foregroundColor(.green)
            HStack{
                Text("Joshua Tree National Park")
                    .foregroundColor(.red)
                    .font(.subheadline)
                Spacer()
                Text("California")
                    .foregroundColor(.blue)
            }
            
            Divider()
            
            Text("About Turtle Rock")
                .font(.title2)
            Text(description)
        }
        .padding()
        Spacer()
        TextField("変更する説明文を入力してください", text: $text )
        Button("変更"){
            description = text
        }
    }
    
}

#Preview {
    bk_tutorialView()
}
