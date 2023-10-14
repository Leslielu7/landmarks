//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Leslie Lu on 10/13/23.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack{
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            
            Spacer()
            
            //add favorite icon
            if landmark.isFavorite{
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
        
        
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        let landmarks = ModelData().landmarks
        return VStack{
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
        }
        
        
    }
}
