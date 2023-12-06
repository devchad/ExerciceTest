//
//  ContentViewModel.swift
//  ExoTest
//
//  Created by R2K7T7TTFH on 27/09/2023.
//

import Foundation

protocol Proto {
    var toto: String? { get set }
    var tata: String? { get set }
    var result: String { get set }
}

class Implem1: Proto {
    var toto: String?
    var tata: String?
    var result: String {
        get {
            let result = (toto ?? "").uppercased()
            guard let tata else {
                return result
            }
            return "\(result)\(tata)"
        }
        set {
            _result = newValue
        }
    }
    var _result: String = ""
}

class Model: Implem1 {
    enum Cased {
        case uppercased
        case lowercased
    }
    
    override var result: String {
        get {
            switch selectedCase {
            case .uppercased:
                return super.result
            case .lowercased:
                let result = (toto ?? "").lowercased()
                guard let tata else {
                    return result
                }
                return "\(result)\(tata)"
            }
        }
        set {
            super.result = newValue
        }
    }
    
    var selectedCase: Cased = .uppercased
}
