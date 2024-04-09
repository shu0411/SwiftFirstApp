    //
//  ContentView.swift
//  FirstApp
//
//  Created by Apple on 2024/04/06.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    @State private var description: String = "Descriptive text goes here."
    @State private var text: String = ""
    
    var body: some View {
        MapView()
            .frame(height:300)
        CircleImage()
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
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
