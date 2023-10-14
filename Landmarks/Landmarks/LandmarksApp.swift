//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Leslie Lu on 10/13/23.
//

import SwiftUI

@main
struct LandmarksApp: App {
    
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
