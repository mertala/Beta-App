//
//  adress.swift
//  todo
//
//  Created by Mert Ala on 28.01.2020.
//  Copyright © 2020 Balaji. All rights reserved.
//

import Foundation
import SwiftUI

struct address: View {
        @State var name = ""
        @State var surname = ""
        @State var mail = ""
        @State var note = ""
    @State var message = ""
        @State var show = false
        
        var body: some View {
            
            VStack {
                Text("İletişim").fontWeight(.heavy).font(.title).padding([.top,.bottom], 2)
               
                VStack(alignment: .leading ){
                    VStack(alignment: .leading ) {
                        Text("Ad").font(.headline).fontWeight(.light).foregroundColor(Color.black.opacity(0.75))
                        HStack {
                        TextField("Adınızı girin", text: $name)
                        }
                            Divider()
                    }
                    
                    VStack(alignment: .leading ) {
                        Text("Soyad").font(.headline).fontWeight(.light).foregroundColor(Color.black.opacity(0.75))
                       TextField("Soyadınızı girin", text: $surname)
                        Divider()
                        }
                    VStack(alignment: .leading ) {
                        Text("Mail").font(.headline).fontWeight(.light).foregroundColor(Color.black.opacity(0.75))
                       TextField("Mail adresinizi girin", text: $mail)
                        Divider()
                        }
                    VStack(alignment: .leading ) {
                        Text("Not").font(.headline).fontWeight(.light).foregroundColor(Color.black.opacity(0.75))
                        TextField("Notunuzu girin", text: $note)
                        Divider()
                        }
                    Spacer()
                    VStack {
                        Button(action: {
                       
                        if self.name  == "" && self.surname == "" {
                               self.message = " Boşlukları doldurun"
                               self.show.toggle()
                               return
                        print("Boşlukları doldur")
                           }
                           if self.name == "" {
                                self.message = "Adını gir"
                                self.show.toggle()
                                return
                                                      }
                            if self.surname == "" {
                                self.message = "Soyadını gir"
                                self.show.toggle()
                                return
                            }
                            if self.note == "" {
                                self.message = "Notunu gir"
                                self.show.toggle()
                                return
                            }
                            if self.mail == "" {
                                self.message = "Mail adresini gir"
                                self.show.toggle()
                                return
                                                           }
                        else
                        {
                            self.message = " Başarılı Giriş"
                            self.show.toggle()
                            print("Başarılı Giriş")
                            return
                            
                            
                            }
                        }) {
                            HStack {
                                Text("Gönder").foregroundColor(Color.white).frame(width: UIScreen.main.bounds.width - 10).padding()
                                .frame(minWidth: 0, maxWidth: .infinity)
                                    .background(Color(UIColor.init(named: "Colorbeta")!))
                                .cornerRadius(20)
                            } .alert(isPresented: $show) {
                            
                            return Alert(title: Text(self.message))
                        }
                    }.padding(.top,2)
                } .padding(.horizontal, 6)
            }.padding()
        }
    }
}
