//
//  ViewModel.swift
//  todo
//
//  Created by Mert Ala on 27.01.2020.
//  Copyright © 2020 Balaji. All rights reserved.
//

import SwiftUI
import Combine

class ViewModel: ObservableObject {
    @Published var apod: [Post] = []
    init() {
        self.fetch()
    }
    
}
extension ViewModel {
    func fetch() {
        API.getImageOfTheDay { apod in
            self.apod = apod
            
        }
    }
}
