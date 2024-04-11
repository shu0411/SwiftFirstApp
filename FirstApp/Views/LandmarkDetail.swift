//
//  LandmarkDetail.swift
//  FirstApp
//
//  Created by Apple on 2024/04/10.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark

    var body: some View {
        ScrollView{
            MapView(coordinate: landmark.locationCordinate)
                .frame(height:300)
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading){
                Text(landmark.name)
                    .font(.title)
                    .foregroundColor(.green)
                HStack{
                    Text(landmark.park)
                        .foregroundColor(.red)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .foregroundColor(.blue)
                }
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
            Spacer()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[0])
}
