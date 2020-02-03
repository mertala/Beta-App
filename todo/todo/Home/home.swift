//
//  home.swift
//  todo
//
//  Created by Mert Ala on 28.01.2020.
//  Copyright © 2020 Balaji. All rights reserved.
//

import Foundation
import SwiftUI


struct tasarimlar : View {
    
  
    
    var body : some View{
        
        VStack(alignment:.leading){

        VStack {
           ScrollView(.vertical, showsIndicators: false) {
           
            marka().padding(.vertical,15)
              Divider()
            beta()
            kadin()
            erkek()
            cocuk()
            Spacer(minLength: 10)
            }
             
            }
        }
    }
}

struct marka : View {
    
    var body : some View{
        
        VStack(alignment: .leading, spacing: 15){
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack(spacing: 15){
                    
                    ForEach (15..<25) { i in
                                      
                        cardViewmarka(img:"\(i)").padding(1)
                        }
                    }
                }
        }.padding(.top,15)
    }
}

struct beta : View {
      @State var show = false
    var body : some View{
        
        VStack(alignment: .leading, spacing: 15){
            
            Text("Beta Autumn Colleciton ").font(.title)
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack(spacing: 15){
                    
                    ForEach (46..<55) { i in
                                      
                        cardViewbeta(img:"\(i)").padding(1).onTapGesture {
                            self.show.toggle()
                        }
                        }
                    }
                }.padding(.top,15)
        }.sheet(isPresented: $show) {
            
            Detail()
        }
        
    
    }
}


struct kadin : View {
    
    var body : some View{
        
        VStack(alignment: .leading, spacing: 15){
            
            Text("WOMAN NEW IN").font(.title)
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack(spacing: 15){
                    
                    ForEach (1..<14) { i in
                                      
                        cardView(img:"\(i)").padding(1)
                        }
                    }
                }
        }.padding(.top,15)
    }
}

struct erkek : View {
    
    var body : some View{
        
        VStack(alignment: .leading, spacing: 15){
            
            Text("MENS NEW IN").font(.title)
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack(spacing: 15){
                    
                    ForEach (26..<35) { i in
                                      
                        cardView(img:"\(i)").padding(1)
                        }
                    
                    }
                }
        }.padding(.top,5)
      
    }
}

struct cocuk : View {
    
    var body : some View{
        
        VStack(alignment: .leading, spacing: 15){
            
            Text("KIDS NEW IN").font(.title)
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack(spacing: 15){
                    
                    ForEach (36..<45) { i in
                                      
                        cardView(img:"\(i)").padding(1)
                        }
                    }
                }
        }.padding(.top,15)
    }
}



