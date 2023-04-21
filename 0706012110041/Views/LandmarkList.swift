//
//  LandmarkList.swift
//  0706012110041
//
//  Created by MacBook Pro on 14/04/23.
//

import Foundation
import SwiftUI

struct LandmarkList: View {
    var body: some View {
//        Deprecated!!!
//        NavigationView {
//            List(landmarks) { landmark in
//                NavigationLink {
//                    LandmarkDetail(landmark: landmark)
//                } label: {
//                    LandmarkRow(landmark: landmark)
//                }
//            }
//            .navigationTitle("Landmarks")
//        }
        
        NavigationStack{
            List(landmarks){landmark in
                NavigationLink{
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Lanmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
