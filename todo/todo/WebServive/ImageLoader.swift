//
//  ImageLoader.swift
//  todo
//
//  Created by Mert Ala on 27.01.2020.
//  Copyright © 2020 Balaji. All rights reserved.

import SwiftUI
import Combine

class ImageLoader: ObservableObject {
    
    @Published var downloadedImage: UIImage? = nil
    
}

extension ImageLoader {
    func load(_ urlString: String) {
        guard let url = URL(string: urlString) else {
            fatalError("error image url")
            
        }
        Constant.session.dataTask(with: url, completionHandler: imageDataHandler ).resume()

       
    }
    func imageDataHandler(data: Data?, res: URLResponse?, error: Error?){
        guard let data = data, error == nil else  {
            fatalError("error image url")
        }
        DispatchQueue.main.async {
            self.downloadedImage = UIImage(data: data)
            
            
        }
        
    }
}
