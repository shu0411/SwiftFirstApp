//
//  LandmarkList.swift
//  FirstApp
//
//  Created by Apple on 2024/04/09.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks,id: \.id) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

#Preview {
    LandmarkList()
}
