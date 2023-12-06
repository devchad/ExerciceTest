//
//  ContentView.swift
//  ExoTest
//
//  Created by R2K7T7TTFH on 27/09/2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: ViewModel
    
    init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            TextField("Texte 1", text: $viewModel.text1)
            TextField("Texte 2", text: $viewModel.text2)
            Toggle("Toggle", isOn: $viewModel.toggle)
            Text(viewModel.result)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static let viewModel = ViewModel()
    static var previews: some View {
        ContentView(viewModel: viewModel)
    }
}
