//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Leslie Lu on 10/13/23.
//

import SwiftUI

struct LandmarkList: View {
    
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView{
            List {
                Toggle(isOn: $showFavoritesOnly){
                    Text("Favorties only")
                }
                
                ForEach(filteredLandmarks){landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
