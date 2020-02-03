//
//  Post.swift
//  todo
//
//  Created by Mert Ala on 27.01.2020.
//  Copyright © 2020 Balaji. All rights reserved.
//

import Foundation

struct Post: Identifiable, Codable {
    let id = UUID()
    let title: String
    let explanation: String
    let date:  String
    let url: String
    
}
