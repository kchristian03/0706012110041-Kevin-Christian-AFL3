//
//  _706012110041App.swift
//  0706012110041
//
//  Created by MacBook Pro on 11/04/23.
//

import SwiftUI

@main
struct _706012110041App: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
