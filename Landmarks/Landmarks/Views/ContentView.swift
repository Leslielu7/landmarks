//
//  ContentView.swift
//  Landmarks
//
//  Created by Leslie Lu on 10/13/23.
//

import SwiftUI

struct ContentView: View {
//    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
