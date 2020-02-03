//
//  Refresh.swift
//  todo
//
//  Created by Mert Ala on 28.01.2020.
//  Copyright © 2020 Balaji. All rights reserved.
//

import Foundation
struct CategoryHome: View {
var categories: [String: [Landmark]] {
    .init(
        grouping: landmarkData,
        by: { $0.category.rawValue }
    )
}
