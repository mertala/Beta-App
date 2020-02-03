//
//  Multitextfield.swift
//  todo
//
//  Created by Mert Ala on 28.01.2020.
//  Copyright © 2020 Balaji. All rights reserved.
//

import Foundation
import SwiftUI

struct MultiTextfield: UIViewRepresentable {
    
    func makeCoordinator() -> MultiTextfield.Coordinator {
        
        return MultiTextfield.Coordinator(parent1: self)
    }
    
    
    @EnvironmentObject var obj : observed
    
    
    func makeUIView(context: UIViewRepresentableContext<MultiTextfield>) -> UITextView {
       
        let view = UITextView()
        view.font = .systemFont(ofSize:19)
        view.text = "Bir şeyler yaz"
        view.textColor = UIColor.black.withAlphaComponent(0.35)
        view.backgroundColor = .clear
    
        view.delegate = context.coordinator
        self.obj.size = view.contentSize.height
        view.isEditable = true
        view.isUserInteractionEnabled = true
        view.isScrollEnabled = true
        return view
    }
    
    func updateUIView(_ uiView: UITextView, context: UIViewRepresentableContext<MultiTextfield>) {
        
     
        
    }


class Coordinator : NSObject, UITextViewDelegate {
    
    var parent : MultiTextfield
    
    init(parent1: MultiTextfield) {
        
        parent = parent1
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = ""
        textView.textColor = .black
        
        
    }
    func textViewDidChange(_ textView: UITextView) {
        self.parent.obj.size = textView.contentSize.height
    }

}
    }


class observed : ObservableObject {
    
    @Published var size : CGFloat = 0
}
   
