//
//  LandmarkList.swift
//  FirstApp
//
//  Created by Apple on 2024/04/09.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView{
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail:{
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
