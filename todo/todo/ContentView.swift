//
//  ContentView.swift

//
//  Created by mertala on 14/12/19.
//  Copyright © 2019 mertala. All rights reserved.
//

import SwiftUI
import CoreData
import SafariServices


struct ContentView: View {
   
    @ObservedObject var fetcher = UserFetcher()
      
    @State var showSafari = false
    @State var urlString = "http://betakonfeksiyon.com.tr"

    var body: some View {
    
      VStack {
        ZStack {
            HStack{
              Button(action: {
                    self.urlString = "http://betakonfeksiyon.com.tr"
                    self.showSafari = true
                }, label: {
                    Image(systemName: "link")
                        .resizable()
                        .frame(width: CGFloat(30), height: CGFloat(30), alignment: .leading)
                    .accentColor(Color(UIColor.init(named: "Colorbeta")!))
                }).padding(.leading,  CGFloat(20))
                        
                .sheet(isPresented: $showSafari) {
                SafariView(url:URL(string: self.urlString)!)
                }
                Spacer()
            }
            HStack {
                Image("Group56")
                    .frame(width: CGFloat(45), height: CGFloat(45), alignment: .center)
            }
        }
        ;Divider()
    
        TabView {
          tasarimlar()
               .tabItem {
                   Image(systemName: "house").font(.system(size: 26))
                   Text("Anasayfa")
               }
                  NavigationView  {
                      VStack {
                         
                          List(fetcher.users) { user in
                             
                              VStack (alignment: .leading) {
                                  Text(user.title)
                                  Text(user.body)
                                    
                                      .font(.system(size: 11))
                                      .foregroundColor(Color.gray)
                              }
                          }
                      }
                       .navigationBarTitle(Text("Web Service Users"))
                  }
               .tabItem {
                   Image(systemName: "text.justify").font(.system(size: 26))
                   Text("Hakkımızda")
               }
            todo()
               .tabItem {
                   Image(systemName: "plus.square").font(.system(size: 26))
                   Text("Notlar")
               }
            VStack {
               address()
                Spacer()
                MapView()

            }
               .tabItem {
                   Image(systemName: "location").font(.system(size: 26))
                   Text("İletişim")
                }
            } .accentColor(Color(UIColor.init(named: "Colorbeta")!))
       }
    }
}

struct SafariView: UIViewControllerRepresentable {

    let url: URL

    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
    }
}



