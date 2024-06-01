//
//  FrameworkGridModelView.swift
//  grid
//
//  Created by Defined Me on 01/06/2024.
//

import SwiftUI

final class FrameworkGridModelView: ObservableObject {
    var selectedFramewrok:Framework? {
        didSet {
            isShowing = true
        }
    }
    
    @Published var isShowing = false
    
    let columns:[GridItem] = [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
}
