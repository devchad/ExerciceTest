//
//  ContentViewViewModel.swift
//  ExoTest
//
//  Created by R2K7T7TTFH on 27/09/2023.
//

import SwiftUI
import Foundation

class ViewModel: ObservableObject {
    var model: Model = Model()
    
    @Published var text1: String = "" {
        didSet {
            model.toto = text1
        }
    }
    @Published var text2: String = "" {
        didSet {
            model.tata = text2
        }
    }
    @Published var toggle: Bool = true {
        didSet {
            switch toggle {
            case true:
                model.selectedCase = .uppercased
            default:
                model.selectedCase = .lowercased
            }
        }
    }
    
    var result: String {
        model.result
    }
}
