    //
//  ContentView.swift
//  FirstApp
//
//  Created by Apple on 2024/04/06.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    var body: some View {
        LandmarkList() 
    }

}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
