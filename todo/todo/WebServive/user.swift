//
//  user.swift
//  todo
//
//  Created by Mert Ala on 29.01.2020.
//  Copyright © 2020 Balaji. All rights reserved.
//

import Foundation
struct User: Codable, Identifiable {
    public var id: Int
    public var title: String
    public var body: String
    
    enum CodingKeys: String, CodingKey {
           case id = "id"
           case title = "title"
           case body = "body"
        }
}
