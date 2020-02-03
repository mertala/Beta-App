//
//  cardview.swift
//  todo
//
//  Created by Mert Ala on 29.01.2020.
//  Copyright © 2020 Balaji. All rights reserved.
//
import SwiftUI
import Foundation



struct cardView : View {
var  img = ""
    var body: some View {
        
        VStack {
            Image (img)
            .renderingMode(.original)
            .resizable()
             .shadow(radius: 2)
        }.frame(width:250, height:350)
        .cornerRadius(20)
    }
}
struct cardViewmarka : View {
var  img = ""
    var body: some View {
        
        VStack {
            Image (img)
            .renderingMode(.original)
            .resizable()
             .shadow(radius: 2)
        }.frame(width:80, height:40)
    }
}

struct cardViewbeta : View {
var  img = ""
    var body: some View {
        
        VStack {
            Image (img)
            .renderingMode(.original)
            .resizable()
             .shadow(radius: 2)
        }.frame(width:250, height:250)
        .cornerRadius(20)
    }
}

