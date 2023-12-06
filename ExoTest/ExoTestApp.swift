//
//  ExoTestApp.swift
//  ExoTest
//
//  Created by R2K7T7TTFH on 27/09/2023.
//

import SwiftUI

@main
struct ExoTestApp: App {
    let viewModel = ViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: viewModel)
        }
    }
}
