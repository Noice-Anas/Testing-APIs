//
//  TestingAPISApp.swift
//  TestingAPIS
//
//  Created by Noice_anas on 26/06/2022.
//

import SwiftUI

@main
struct TestingAPISApp: App {
    var body: some Scene {
        WindowGroup {
            VStack {
                ZStack {
                    Color.gray.opacity(0.8)
                    ContentView()
                }
                ZStack {
                    Color.gray.opacity(0.5)
                    ContentView_Post()
                }
            }
        }
    }
}
