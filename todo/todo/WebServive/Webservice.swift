//
//  User.swift
//  todo
//
//  Created by Mert Ala on 29.01.2020.
//  Copyright © 2020 Balaji. All rights reserved.
//

import Foundation

public class UserFetcher: ObservableObject {

    @Published var users = [User]()
    
    init(){
        load()
    }
    
    func load() {
        let url = URL(string: "https://jsonplaceholder.typicode.com/posts")!

    
        URLSession.shared.dataTask(with: url) {(data,response,error) in
            do {
                if let d = data {
                    let decodedLists = try JSONDecoder().decode([User].self, from: d)
                    DispatchQueue.main.async {
                        self.users = decodedLists
                    }
                }else {
                    print("No Data")
                }
            } catch {
                print ("Error")
            }
            
        }.resume()
       
    }
}
