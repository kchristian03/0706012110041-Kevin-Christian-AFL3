//
//  LandmarkList.swift
//  0706012110041
//
//  Created by MacBook Pro on 14/04/23.
//

import Foundation
import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
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
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink{
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
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
                .environmentObject(ModelData())
//                .previewDevice(PreviewDevice(rawValue: deviceName))
//                .previewDisplayName(deviceName)
        }
    }
}
